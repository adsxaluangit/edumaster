/**
 * student controller
 */

import { factories } from '@strapi/strapi'

export default factories.createCoreController('api::student.student', ({ strapi }) => ({
  async findUnassigned(ctx) {
    try {
      const { page = 1, pageSize = 50, filters = {}, populate = '*' } = ctx.query;
      const pageNum = parseInt(page as string, 10);
      const limit = parseInt(pageSize as string, 10);
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
        const anyFilters = filters as any;
        if (anyFilters['$or'] && Array.isArray(anyFilters['$or'])) {
           const orFilter = anyFilters['$or'];
           let term = '';
           if (orFilter[0]?.full_name?.$containsi) term = orFilter[0].full_name.$containsi;
           else if (orFilter[1]?.id_number?.$contains) term = orFilter[1].id_number.$contains;

           if (term) {
             const searchTerm = `%${term}%`;
             baseQuery = baseQuery.where((builder: any) => {
                 builder.where('students.full_name', 'ilike', searchTerm)
                        .orWhere('students.id_number', 'ilike', searchTerm)
                        .orWhere('students.student_code', 'ilike', searchTerm);
             });
           }
        }
        if (anyFilters['group'] && anyFilters['group']['$eq']) {
           baseQuery = baseQuery.where('students.group', anyFilters['group']['$eq']);
        }
      }

      // Get Paginated IDs
      const studentIdsRecords = await baseQuery.clone().select('students.document_id').orderBy('students.created_at', 'desc').limit(limit).offset(offset);
      const documentIds = studentIdsRecords.map(r => r.document_id);

      let formattedStudents: any[] = [];
      if (documentIds.length > 0) {
        // Fetch full objects using Strapi's entity service to preserve formatting
        const rawEntities = await strapi.documents('api::student.student').findMany({
            filters: { documentId: { $in: documentIds } },
            populate: populate as any
        });
        
        // Ensure sorting order matches query result!
        formattedStudents = documentIds.map(docId => (rawEntities as any[]).find(s => s.documentId === docId)).filter(Boolean);
      }

      // Get count
      const countRes: any = await baseQuery.clone().clearSelect().count('* as count').first();
      const total = countRes ? parseInt((countRes as any).count as string, 10) : 0;

      // Return properly formatted wrapper!
      const data = formattedStudents;

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
    } catch (err: any) {
      console.error(err);
      ctx.throw(500, err.message || 'Internal Server Error');
    }
  }
}));
