
import { GoogleGenAI } from "@google/genai";

export const generateClassSummary = async (classData: any, students: any[]) => {
  const ai = new GoogleGenAI({ apiKey: process.env.API_KEY });
  const prompt = `Hãy viết một đoạn tóm tắt chuyên nghiệp về tình hình lớp học sau:
    Tên lớp: ${classData.name}
    Số lượng học viên: ${students.length}
    Trạng thái: ${classData.status}
    Hãy nêu bật sự cần thiết của việc đào tạo và kỳ vọng đầu ra cho doanh nghiệp. Trả lời bằng tiếng Việt.`;

  try {
    const response = await ai.models.generateContent({
      model: 'gemini-3-flash-preview',
      contents: prompt,
    });
    return response.text;
  } catch (error) {
    console.error("Gemini Error:", error);
    return "Không thể khởi tạo tóm tắt AI tại thời điểm này.";
  }
};

export const suggestTeacherAssignments = async (teachers: any[], classes: any[]) => {
  const ai = new GoogleGenAI({ apiKey: process.env.API_KEY });
  const prompt = `Gợi ý phân công giảng dạy tối ưu cho danh sách giảng viên: ${JSON.stringify(teachers.map(t => t.name))} và lớp học: ${JSON.stringify(classes.map(c => c.name))}. Dựa trên các yếu tố phổ biến trong quản lý giáo dục.`;

  try {
    const response = await ai.models.generateContent({
      model: 'gemini-3-flash-preview',
      contents: prompt,
    });
    return response.text;
  } catch (error) {
    return "Gợi ý AI hiện không khả dụng.";
  }
};

export const processPassportPhoto = async (imageBase64: string) => {
  const ai = new GoogleGenAI({ apiKey: process.env.API_KEY || '' });
  const prompt = `Khi bấm vào nút xử lý AI (thay đồ) Hãy dùng bảo AI biến ảnh chụp thành ảnh kiểu hộ chiếu: giữ nguyên khuôn mặt, tông màu da mịn màng, tóc gọn gàng, nền trắng tinh, ánh sáng studio giúp làm nổi bật đôi mắt và đường nét khuôn mặt, định dạng 3x4 cm,kích thước 354 × 472 pixel (ở độ phân giải 350 DPI).`;

  try {
    const base64Data = imageBase64.replace(/^data:image\/(png|jpeg|jpg);base64,/, "");
    const mimeMatch = imageBase64.match(/^data:image\/(png|jpeg|jpg);base64,/);
    const mimeType = mimeMatch ? `image/${mimeMatch[1]}` : 'image/jpeg';

    const response = await ai.models.generateContent({
      model: 'gemini-3-flash-preview',
      contents: [
        {
          role: 'user',
          parts: [
            { text: prompt },
            {
              inlineData: {
                data: base64Data,
                mimeType: mimeType
              }
            }
          ]
        }
      ]
    });
    return response.text;
  } catch (error) {
    console.error("Gemini Error:", error);
    throw new Error("Lỗi xử lý ảnh từ Gemini.");
  }
};
