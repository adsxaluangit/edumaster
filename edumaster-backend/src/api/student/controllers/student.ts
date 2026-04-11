/**
 * student controller
 */

import { factories } from '@strapi/strapi'

export default factories.createCoreController('api::student.student', ({ strapi }) => ({
  async findUnassigned(ctx) {
    try {
      const { page = 1, pageSize = 50, filters = {}, populate = '*' } = ctx.query;
      const pageNum = parseInt(page as string);
      const limit = parseInt(pageSize as string);
      const offset = (pageNum - 1) * limit;

      const knex = strapi.db.connection;
      
      let baseQuery = knex('students')
        .whereNotIn('students.id', function() {
          this.select('class_decisions_students_lnk.student_id')
            .from('class_decisions_students_lnk')
            .join('class_decisions', 'class_decisions.id', 'class_decisions_students_lnk.class_decision_id')
            .whereIn('class_decisions.type', ['OPENING', 'RECOGNITION'])
            .whereNotNull('class_decisions_students_lnk.student_id');
        });

      // Simple handling of search string from customized Query syntax used in frontend
      if (filters && typeof filters === 'object') {
        if (filters['$or'] && Array.isArray(filters['$or'])) {
           const orFilter = filters['$or'];
           let term = '';
           if (orFilter[0]?.full_name?.$containsi) term = orFilter[0].full_name.$containsi;
           else if (orFilter[1]?.id_number?.$contains) term = orFilter[1].id_number.$contains;

           if (term) {
             const searchTerm = `%${term}%`;
             baseQuery = baseQuery.where(builder => {
                 builder.where('students.full_name', 'ilike', searchTerm)
                        .orWhere('students.id_number', 'ilike', searchTerm)
                        .orWhere('students.student_code', 'ilike', searchTerm);
             });
           }
        }
        if (filters['group'] && filters['group']['$eq']) {
           baseQuery = baseQuery.where('students.group', filters['group']['$eq']);
        }
      }

      // Get Paginated IDs
      const studentIdsRecords = await baseQuery.clone().select('students.document_id').orderBy('students.created_at', 'desc').limit(limit).offset(offset);
      const documentIds = studentIdsRecords.map(r => r.document_id);

      let formattedStudents = [];
      if (documentIds.length > 0) {
        // Fetch full objects using Strapi's entity service to preserve formatting
        const rawEntities = await strapi.documents('api::student.student').findMany({
            filters: { documentId: { $in: documentIds } },
            populate: populate
        });
        
        // Ensure sorting order matches query result!
        formattedStudents = documentIds.map(docId => rawEntities.find(s => s.documentId === docId)).filter(Boolean);
      }

      // Get count
      const countRes = await baseQuery.clone().clearSelect().count('* as count').first();
      const total = parseInt(countRes.count);

      // Return properly formatted wrapper!
      const data = formattedStudents.map(student => {
         // In Strapi v5, Strapi expects the normalized form for Data wrapper
         return student;
      });

      return {
          data: data,
          meta: {
              pagination: {
                  page: pageNum,
                  pageSize: limit,
                  pageCount: Math.ceil(total / limit),
                  total
              }
          }
      };
    } catch (err) {
      console.error(err);
      ctx.throw(500, err);
    }
  }
}));
