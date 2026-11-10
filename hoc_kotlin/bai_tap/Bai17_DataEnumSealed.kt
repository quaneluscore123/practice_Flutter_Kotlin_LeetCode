package bai17

// =====================================================================
// BÀI 17: DATA CLASS, ENUM, SEALED CLASS             Cấp độ: 🚴 Tập xe đạp
// =====================================================================
// 📖 LÝ THUYẾT
// 1) data class: class chuyên CHỨA DỮ LIỆU, Kotlin tự viết sẵn:
//    toString(), equals() (==), hashCode(), copy(), componentN() (bóc tách)
//      data class User(val ten: String, val tuoi: Int)
//      val u2 = u.copy(tuoi = 19)
//      val (ten, tuoi) = u                 // destructuring
//
// 2) enum class:
//      enum class Mua { XUAN, HA, THU, DONG }
//      enum class Size(val canNang: Int) { S(40), M(50), L(60) }
//      Mua.HA.name   Mua.HA.ordinal   Mua.entries (tất cả)   Mua.valueOf("HA")
//
// 3) sealed class / sealed interface: tập class con ĐÓNG KÍN.
//    when trên sealed KHÔNG cần else, thiếu trường hợp là báo lỗi -> an toàn.
//      sealed class KetQua {
//          data class ThanhCong(val data: String) : KetQua()
//          data class ThatBai(val loi: String) : KetQua()
//          data object DangTai : KetQua()
//      }
//    👉 Mẫu này dùng RẤT NHIỀU trong Android (UI State).
//
// 4) Pair / Triple: gói 2-3 giá trị nhanh:  val p = "Quan" to 18 ; p.first
// =====================================================================

data class User(val ten: String, val tuoi: Int)

fun main() {
    // ---- VÍ DỤ MẪU ----
    val u1 = User("Quan", 18)
    val u2 = User("Quan", 18)
    println(u1)                 // User(ten=Quan, tuoi=18)
    println(u1 == u2)           // true (so sánh nội dung)
    val u3 = u1.copy(tuoi = 19)
    val (ten, tuoi) = u3
    println("$ten - $tuoi")

    baiTap1()
    baiTap2()
    baiTap3()
    baiTap4()
}

// ⭐ BÀI TẬP 1: data class SanPham(ten, gia, soLuong).
//   - Tạo 2 sản phẩm giống hệt nhau, so sánh == -> true
//   - Thử bỏ chữ data -> so sánh lại -> false. Vì sao? (viết comment)
//   - Dùng copy để tạo bản giảm giá 10%
fun baiTap1() {
    // TODO
}

// ⭐⭐ BÀI TẬP 2: enum class DenGiaoThong(val giay: Int) { XANH(30), VANG(3), DO(25) }
// Thêm fun tiepTheo(): DenGiaoThong (XANH -> VANG -> DO -> XANH).
// In 1 chu kỳ đèn và tổng thời gian 1 chu kỳ (dùng entries.sumOf).
fun baiTap2() {
    // TODO
}

// ⭐⭐ BÀI TẬP 3: Hàm thongKe(ds: List<Int>): Triple<Int, Int, Double> trả về (min, max, tb).
// Bóc tách: val (mn, mx, tb) = thongKe(listOf(4, 8, 1, 9))
fun baiTap3() {
    // TODO
}

// ⭐⭐⭐ BÀI TẬP 4: Mô phỏng trạng thái màn hình tải dữ liệu.
//   sealed interface TrangThai
//   data object DangTai : TrangThai
//   data class ThanhCong(val ds: List<String>) : TrangThai
//   data class Loi(val thongBao: String) : TrangThai
// fun hienThi(tt: TrangThai) dùng when (không else):
//   DangTai -> "⏳ Đang tải..."  ThanhCong -> in danh sách  Loi -> "❌ ..."
// Thử xoá 1 nhánh trong when -> đọc lỗi.
fun baiTap4() {
    // TODO
}
