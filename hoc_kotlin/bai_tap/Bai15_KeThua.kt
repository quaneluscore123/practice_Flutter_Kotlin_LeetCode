package bai15

// =====================================================================
// BÀI 15: KẾ THỪA & ĐA HÌNH                          Cấp độ: 🏃 Tập chạy
// =====================================================================
// 📖 LÝ THUYẾT
// ⚠️ Trong Kotlin, class mặc định là "final" (KHÔNG cho kế thừa).
//    Muốn cho kế thừa phải thêm chữ  open.  Method muốn ghi đè cũng phải open.
//
//   open class DongVat(val ten: String) {
//       open fun keu() = println("...")
//   }
//   class Cho(ten: String) : DongVat(ten) {          // dấu : thay cho extends
//       override fun keu() = println("$ten: Gâu gâu")
//   }
//
//   super.keu()           gọi method của cha
//   if (d is Cho) d.vayDuoi()     is + smart cast (tự ép kiểu luôn)
//   val c = d as? Cho     ép kiểu an toàn (sai -> null)
//   protected             chỉ class con mới thấy
//
// 🔁 Dart: class Cho extends DongVat   →   Kotlin: class Cho(...) : DongVat(...)
// =====================================================================

open class DongVat(val ten: String) {
    open fun keu() = println("$ten: ...")
}

class Cho(ten: String) : DongVat(ten) {
    override fun keu() = println("$ten: Gâu gâu!")
    fun vayDuoi() = println("$ten vẫy đuôi")
}

fun main() {
    // ---- VÍ DỤ MẪU ----
    val ds: List<DongVat> = listOf(Cho("Ki"), DongVat("Con gì đó"))
    for (d in ds) {
        d.keu()
        if (d is Cho) d.vayDuoi()   // smart cast: không cần ép kiểu
    }

    // ---- Bỏ comment để kiểm tra ----
    // val congTy: List<NhanVien> = listOf(
    //     NhanVien("An", 10_000_000),
    //     QuanLy("Bình", 15_000_000, 5_000_000),
    //     ThucTapSinh("Chi"),
    // )
    // congTy.forEach { println("${it.ten}: ${it.tinhLuong()}đ") }
    // println("Tổng lương: ${congTy.sumOf { it.tinhLuong() }}")
}

// ⭐ BÀI TẬP 1: Tạo Meo, Ga kế thừa DongVat. Cho cả đàn cùng kêu.
// TODO

// ⭐⭐ BÀI TẬP 2: Hệ thống lương:
//   open class NhanVien(ten, luongCoBan: Long) { open fun tinhLuong(): Long }
//   QuanLy(+ phuCap)           tinhLuong = luongCoBan + phuCap
//   ThucTapSinh(ten)           luongCoBan cố định 3.000.000
// TODO

// ⭐⭐ BÀI TẬP 3: Thêm open fun moTa() vào NhanVien. QuanLy ghi đè:
// gọi super.moTa() rồi in thêm "(Quản lý)".

// ⭐⭐⭐ BÀI TẬP 4: Thử bỏ chữ open ở NhanVien -> đọc lỗi.
// Thử tạo class con của Cho -> lỗi gì? Vì sao Kotlin thiết kế như vậy? (viết comment)
