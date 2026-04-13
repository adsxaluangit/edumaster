/**
 * student controller
 */

import { factories } from '@strapi/strapi'

export default factories.createCoreController('api::student.student', ({ strapi }) => ({

  // Endpoint: GET /api/students/unassigned
  // Returns paginated students NOT in any OPENING or RECOGNITION decision
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

      const studentIdsRecords = await baseQuery.clone()
        .select('students.document_id')
        .orderBy('students.created_at', 'desc')
        .limit(limit)
        .offset(offset);
      const documentIds = studentIdsRecords.map((r: any) => r.document_id);

      let formattedStudents: any[] = [];
      if (documentIds.length > 0) {
        const rawEntities = await strapi.documents('api::student.student').findMany({
            filters: { documentId: { $in: documentIds } },
            populate: populate as any
        });
        formattedStudents = documentIds.map(
          (docId: string) => (rawEntities as any[]).find(s => s.documentId === docId)
        ).filter(Boolean);
      }

      const countRes: any = await baseQuery.clone().clearSelect().count('* as count').first();
      const total = countRes ? parseInt((countRes as any).count as string, 10) : 0;

      return {
          data: formattedStudents,
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
  },

  // Endpoint: GET /api/students/all-brief
  // Returns ALL students with minimal fields for dropdowns (no pagination)
  // Performance: loads in batches of 500, returns only needed columns
  async findAllBrief(ctx) {
    try {
      const knex = strapi.db.connection;
      
      // Direct SQL for maximum performance — only select needed columns
      const rows = await knex('students as s')
        .leftJoin('students_school_class_lnk as lnk', 's.id', 'lnk.student_id')
        .leftJoin('classes as c', 'c.id', 'lnk.class_id')
        .select(
          's.id',
          's.document_id as documentId',
          's.student_code',
          's.full_name',
          's.first_name',
          's.last_name',
          's.dob',
          's.pob',
          's.gender',
          's.id_number',
          's.group',
          's.class_code',
          's.company',
          's.phone',
          's.is_approved',
          'c.document_id as class_document_id',
          'c.name as class_name',
          'c.code as class_code_ref'
        )
        .orderBy('s.full_name', 'asc');

      const data = rows.map((r: any) => ({
        id: r.id,
        documentId: r.documentId,
        student_code: r.student_code,
        full_name: r.full_name,
        first_name: r.first_name,
        last_name: r.last_name,
        dob: r.dob,
        pob: r.pob,
        gender: r.gender,
        id_number: r.id_number,
        group: r.class_name || r.group || '',
        class_code: r.class_code_ref || r.class_code || '',
        class_name: r.class_name || '',
        class_document_id: r.class_document_id || '',
        company: r.company,
        phone: r.phone,
        is_approved: r.is_approved,
        photo: null,
        documents: []
      }));

      return {
        data,
        meta: { pagination: { page: 1, pageSize: data.length, pageCount: 1, total: data.length } }
      };
    } catch (err: any) {
      console.error(err);
      ctx.throw(500, err.message || 'Internal Server Error');
    }
  }
}));
