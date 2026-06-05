/**
 * Student Lifecycle Hooks
 * 
 * afterCreate: Tự động điền ảnh 3x4 từ CCCD cũ (trong vòng 5 năm)
 * nếu record mới không có ảnh.
 * 
 * Quy tắc:
 * - Chỉ tìm ảnh từ records tạo trong 5 năm gần nhất (cùng id_number)
 * - Chỉ copy URL string → KHÔNG upload file mới → không tốn ổ cứng
 * - Không throw lỗi → không chặn quá trình tạo record
 */
export default {
  async afterCreate(event: any) {
    const { result } = event;

    // Chỉ xử lý nếu record vừa tạo KHÔNG có ảnh và có CCCD hợp lệ
    if (result.photo || !result.id_number || result.id_number.length < 9) return;

    try {
      const knex = (strapi as any).db.connection;

      // Mốc 5 năm trước
      const fiveYearsAgo = new Date();
      fiveYearsAgo.setFullYear(fiveYearsAgo.getFullYear() - 5);

      // Tìm ảnh mới nhất từ records cùng CCCD, trong 5 năm gần nhất
      const row = await knex('students')
        .where('id_number', result.id_number)
        .whereNot('id', result.id)
        .whereNotNull('photo')
        .where('photo', '!=', '')
        .where('created_at', '>=', fiveYearsAgo.toISOString())
        .orderBy('created_at', 'desc')
        .select('photo')
        .first();

      if (row?.photo) {
        // Ghi URL ảnh vào record mới — chỉ copy string, 0 byte tốn thêm ổ cứng
        await knex('students')
          .where('id', result.id)
          .update({ photo: row.photo });

        console.log(`[lifecycle] Auto-filled photo for CCCD ${result.id_number} → ${row.photo}`);
      }
    } catch (err: any) {
      // Bỏ qua lỗi — không chặn quá trình tạo record
      console.error('[lifecycle afterCreate] auto-fill photo error:', err?.message || err);
    }
  }
};
