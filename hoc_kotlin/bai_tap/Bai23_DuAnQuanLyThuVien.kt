package bai23

// =====================================================================
// BÀI 23: DỰ ÁN TỔNG HỢP - QUẢN LÝ THƯ VIỆN           Cấp độ: 🚗 Lái ô tô
// =====================================================================
// 🎯 Kết hợp TẤT CẢ những gì đã học. Bài tự do - tự thiết kế nhé!
//    (Cùng đề với bài 22 bên Dart -> so sánh 2 ngôn ngữ sau khi làm xong)
//
// 📋 YÊU CẦU
// 1) enum class TheLoai(val tenHienThi: String) { TIEU_THUYET("Tiểu thuyết"), ... }
//
// 2) data class Sach(id, tenSach, tacGia, namXuatBan, theLoai, var dangDuocMuon = false)
//
// 3) class DocGia(id, ten) - private val sachDangMuon = mutableListOf<Sach>() (tối đa 3)
//
// 4) sealed class KetQuaMuon {
//        data class ThanhCong(val sach: Sach) : KetQuaMuon()
//        data class ThatBai(val lyDo: String) : KetQuaMuon()
//    }
//    -> muonSach trả về KetQuaMuon thay vì ném exception (kiểu Kotlin hiện đại)
//
// 5) class ThuVien:
//      themSach, xoaSach(id), timTheoTen(tuKhoa) (không phân biệt hoa thường)
//      locTheoTheLoai(tl), muonSach(dg, idSach): KetQuaMuon, traSach(dg, idSach)
//      thongKeTheoTheLoai(): Map<TheLoai, Int>   (dùng groupingBy/eachCount)
//      sachMoiNhat(n)                             (sortedByDescending + take)
//      tacGiaNhieuSachNhat()                      (groupBy + maxBy)
//
// 6) object DuLieuMau { val dsSach = listOf(...) }  chứa 8-10 cuốn sách mẫu
//
// 7) Extension: fun List<Sach>.inDanhSach()  in đẹp dạng bảng
//
// 8) main(): menu dòng lệnh dùng readln() + when:
//      1. Xem tất cả   2. Tìm sách   3. Mượn   4. Trả   5. Thống kê   0. Thoát
//
// 🎁 NÂNG CAO:
//    - Dùng coroutines: suspend fun taiDuLieu() giả lập delay 1s
//    - Lưu ra file:  java.io.File("thuvien.txt").writeText(...) / readLines()
//    - Tách thành nhiều file: model/, repository/, ui/
//
// ✅ Xong bài này là bạn đã sẵn sàng học Android / Kotlin Multiplatform! 🎉
// =====================================================================

fun main() {
    // TODO: bắt đầu từ đây
}
