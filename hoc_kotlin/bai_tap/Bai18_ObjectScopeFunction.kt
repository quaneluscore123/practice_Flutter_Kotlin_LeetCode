package bai18

// =====================================================================
// BÀI 18: OBJECT, COMPANION OBJECT, SCOPE FUNCTIONS   Cấp độ: 🚴 Tập xe đạp
// =====================================================================
// 📖 LÝ THUYẾT
// 1) object: tạo SINGLETON (chỉ có 1 đối tượng duy nhất) cực nhanh.
//      object CauHinh { var ngonNgu = "vi" }
//      CauHinh.ngonNgu = "en"
//
// 2) companion object: thứ thuộc về CLASS (≈ static của Dart/Java)
//      class User private constructor(val ten: String) {
//          companion object {
//              var soLuong = 0
//              fun tao(ten: String): User { soLuong++; return User(ten) }
//          }
//      }
//      User.tao("Quan")
//
// 3) Scope functions - 5 hàm "nhỏ mà có võ":
//   | Hàm   | Đối tượng gọi là | Trả về          | Hay dùng để                     |
//   |-------|------------------|-----------------|---------------------------------|
//   | let   | it               | kết quả lambda  | xử lý khi khác null: x?.let{}   |
//   | apply | this             | chính đối tượng | cấu hình object vừa tạo         |
//   | also  | it               | chính đối tượng | làm thêm việc phụ (log, in)     |
//   | run   | this             | kết quả lambda  | tính toán trên object           |
//   | with  | this             | kết quả lambda  | gọi nhiều method trên 1 object  |
// =====================================================================

class Nguoi {
    var ten = ""
    var tuoi = 0
    var email = ""
    override fun toString() = "Nguoi($ten, $tuoi, $email)"
}

fun main() {
    // ---- VÍ DỤ MẪU ----
    val p = Nguoi().apply {
        ten = "Quan"
        tuoi = 18
        email = "quan@mail.com"
    }
    println(p)

    val doDai = p.ten.let { it.length * 2 }
    println(doDai)

    val ds = mutableListOf(1, 2).also { println("Tạo list: $it") }
    ds.add(3)

    baiTap1()
    baiTap2()
    baiTap3()
    baiTap4()
}

// ⭐ BÀI TẬP 1: Tạo object BoDem có biến dem và các hàm tang(), giam(), datLai().
// Gọi từ 2 hàm khác nhau và chứng minh chúng dùng CHUNG 1 BoDem.
fun baiTap1() {
    // TODO
}

// ⭐⭐ BÀI TẬP 2: class SinhVien với private constructor + companion object:
//   - fun tao(ten: String, diem: Double): SinhVien?  (diem ngoài 0..10 -> null)
//   - biến soLuong đếm số sinh viên đã tạo thành công
//   - hằng số const val DIEM_DAU = 5.0
fun baiTap2() {
    // TODO
}

// ⭐⭐ BÀI TẬP 3: Viết lại đoạn code sau bằng apply và also:
//   val sb = StringBuilder()
//   sb.append("Xin ")
//   sb.append("chào ")
//   sb.append("Kotlin")
//   println("Độ dài: " + sb.length)
//   val ketQua = sb.toString()
fun baiTap3() {
    // TODO
}

// ⭐⭐⭐ BÀI TẬP 4: Cho val email: String? = "  QUAN@Gmail.COM  "
// Dùng chuỗi ?.let / run để: trim, viết thường, kiểm tra có "@",
// in "Email hợp lệ: quan@gmail.com" hoặc "Email không hợp lệ". Thử với null.
// Dùng with(Nguoi()) { ... } để in thông tin 1 người mà không lặp lại tên biến.
fun baiTap4() {
    // TODO
}
