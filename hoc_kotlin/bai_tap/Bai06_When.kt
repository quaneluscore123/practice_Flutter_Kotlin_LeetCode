package bai06

// =====================================================================
// BÀI 06: WHEN (phiên bản xịn của switch)            Cấp độ: 🚶 Tập đi
// =====================================================================
// 📖 LÝ THUYẾT
//   when (x) {
//       1 -> println("Một")
//       2, 3 -> println("Hai hoặc ba")         // nhiều giá trị
//       in 4..10 -> println("Từ 4 đến 10")     // khoảng
//       !in 0..100 -> println("Ngoài 0..100")
//       is String -> ...                       // kiểm tra kiểu
//       else -> println("Khác")
//   }
//
//   val ten = when (thu) { 1 -> "CN"; 2 -> "T2"; else -> "?" }   // when là biểu thức
//
//   when {                       // không có đối số = thay cho chuỗi if-else
//       diem >= 9 -> "Xuất sắc"
//       diem >= 8 -> "Giỏi"
//       else -> "Khác"
//   }
// =====================================================================

fun main() {
    // ---- VÍ DỤ MẪU ----
    val mau = "do"
    val hanhDong = when (mau) {
        "do" -> "Dừng lại"
        "vang" -> "Chậm lại"
        "xanh" -> "Đi"
        else -> "Đèn hỏng"
    }
    println(hanhDong)

    baiTap1(3)
    baiTap2('*', 6.0, 3.0)
    baiTap3(2)
    baiTap4(7.5)
    baiTap5(42)
    baiTap5("Kotlin")
    baiTap5(3.14)
}

// ⭐ BÀI TẬP 1: Số thứ (2..8) -> tên thứ. 8 = Chủ Nhật. Khác -> "Không hợp lệ"
fun baiTap1(thu: Int) {
    // TODO
}

// ⭐⭐ BÀI TẬP 2: Máy tính mini dùng when biểu thức.  ('*', 6, 3) -> 18.0
// Chia cho 0 hoặc phép tính lạ -> trả về null và in "Lỗi"
fun baiTap2(pheptinh: Char, a: Double, b: Double) {
    // TODO
}

// ⭐⭐ BÀI TẬP 3: Số ngày trong tháng (năm thường). Gộp: 1, 3, 5, 7, 8, 10, 12 -> 31
fun baiTap3(thang: Int) {
    // TODO
}

// ⭐⭐ BÀI TẬP 4: Xếp loại học lực bằng when KHÔNG đối số.
fun baiTap4(diem: Double) {
    // TODO
}

// ⭐⭐⭐ BÀI TẬP 5: Nhận vào Any (kiểu gì cũng được). Dùng when + is:
//   Int    -> "Số nguyên, bình phương = ..."
//   String -> "Chuỗi dài ... ký tự"
//   Double -> "Số thực, làm tròn = ..."   (Math.round hoặc .roundToInt())
//   khác   -> "Không biết"
fun baiTap5(x: Any) {
    // TODO
}
