// =====================================================================
// BÀI 22: DỰ ÁN TỔNG HỢP - QUẢN LÝ THƯ VIỆN           Cấp độ: 🚗 Lái ô tô
// =====================================================================
// 🎯 Mục tiêu: Kết hợp TẤT CẢ những gì đã học vào 1 chương trình hoàn chỉnh.
//    Đây là bài tự do - không có code mẫu. Hãy tự thiết kế!
//
// 📋 YÊU CẦU
//
// 1) enum TheLoai { tieuThuyet, khoaHoc, thieuNhi, lapTrinh }
//
// 2) class Sach:  id, tenSach, tacGia, namXuatBan, theLoai, dangDuocMuon
//      - factory Sach.fromJson(Map<String, dynamic>)  và  toJson()
//      - toString() đẹp
//
// 3) class DocGia: id, ten, List<Sach> sachDangMuon (tối đa 3 cuốn)
//
// 4) Tự tạo exception: SachKhongTonTaiException, VuotGioiHanMuonException,
//    SachDaDuocMuonException
//
// 5) class ThuVien:
//      - themSach(Sach s)
//      - xoaSach(int id)
//      - List<Sach> timTheoTen(String tuKhoa)      (không phân biệt hoa thường)
//      - List<Sach> locTheoTheLoai(TheLoai tl)
//      - void muonSach(DocGia dg, int idSach)      (throw lỗi phù hợp)
//      - void traSach(DocGia dg, int idSach)
//      - Map<TheLoai, int> thongKeTheoTheLoai()
//      - List<Sach> sachMoiNhat(int n)             (sắp xếp theo năm giảm dần)
//
// 6) Future<void> taiDuLieu(): giả lập chờ 1 giây, rồi nạp danh sách sách
//    từ một List<Map<String, dynamic>> (giống như dữ liệu JSON từ API).
//
// 7) Trong main(): tải dữ liệu, rồi thử hết các chức năng, bắt lỗi đầy đủ.
//
// 🎁 NÂNG CAO (không bắt buộc):
//    - Làm menu dòng lệnh: đọc lựa chọn từ bàn phím bằng stdin.readLineSync()
//        1. Xem tất cả sách   2. Tìm sách   3. Mượn   4. Trả   0. Thoát
//    - Lưu/đọc dữ liệu ra file JSON: import 'dart:io'; import 'dart:convert';
//        File("thuvien.json").writeAsStringSync(jsonEncode(...));
//    - Tách code ra nhiều file (models/sach.dart, ...) và dùng import
//
// ✅ Làm xong bài này là bạn đã sẵn sàng học Flutter! 🎉
// =====================================================================

void main() async {
  // TODO: bắt đầu từ đây
}
