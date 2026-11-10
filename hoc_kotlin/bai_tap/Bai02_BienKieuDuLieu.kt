package bai02

// =====================================================================
// BÀI 02: BIẾN VÀ KIỂU DỮ LIỆU                      Cấp độ: 🍼 Tập bò
// =====================================================================
// 📖 LÝ THUYẾT
//   val ten = "Quan"      // val = KHÔNG gán lại được (giống final của Dart) ✅ ưu tiên dùng
//   var tuoi = 18         // var = gán lại được
//   val pi: Double = 3.14 // ghi rõ kiểu sau dấu :
//
// Kiểu cơ bản:
//   Int (số nguyên)   Long (số nguyên lớn, VD: 10_000_000_000L)
//   Double (số thực)  Float (3.14f)
//   String            Char ('A' - 1 ký tự, nháy đơn)
//   Boolean (true/false)
//
// const val PI = 3.14  -> hằng số lúc biên dịch, chỉ đặt ở NGOÀI hàm (top-level)
// Chèn biến vào chuỗi: "Tên: $ten, năm sau: ${tuoi + 1}"
// Xem kiểu: bien::class.simpleName
//
// 🔁 So với Dart:  final -> val ;  var -> var ;  int -> Int ;  bool -> Boolean
// =====================================================================

const val TRUONG = "Đại học ABC"

fun main() {
    // ---- VÍ DỤ MẪU ----
    val ten = "Quan"
    var tuoi = 18
    tuoi += 1
    val chieuCao: Double = 1.72
    val laSinhVien = true
    val xepLoai: Char = 'A'
    println("$ten, $tuoi tuổi, cao ${chieuCao}m, SV: $laSinhVien, loại $xepLoai, $TRUONG")

    baiTap1()
    baiTap2()
    baiTap3()
    baiTap4()
    baiTap5()
}

// ⭐ BÀI TẬP 1: Tạo các biến mô tả 1 chiếc điện thoại:
//   tenMay (String), gia (Long), manHinh (Double), co5G (Boolean)
// In ra:  iPhone 15 | 25000000đ | 6.1 inch | 5G: true
fun baiTap1() {
    // TODO
}

// ⭐ BÀI TẬP 2: Khai báo val a = 10. Thử gán a = 20 -> đọc lỗi -> đổi thành var.
// Ghi comment: khi nào dùng val, khi nào dùng var?
fun baiTap2() {
    // TODO
}

// ⭐ BÀI TẬP 3: In ra kiểu của các biến:  val x = 5; val y = 5.0; val z = "5"; val c = '5'
// Gợi ý: println(x::class.simpleName)
fun baiTap3() {
    // TODO
}

// ⭐⭐ BÀI TẬP 4: Hoán đổi a = 5, b = 9.
//   Cách 1: dùng biến tạm
//   Cách 2 (kiểu Kotlin): a = b.also { b = a }
fun baiTap4() {
    var a = 5
    var b = 9
    println("Trước: a=$a, b=$b")
    // TODO
    println("Sau: a=$a, b=$b")
}

// ⭐⭐ BÀI TẬP 5: Chuyển kiểu
//   "25" -> Int rồi + 5          -> 30          (dùng .toInt())
//   "3.5" -> Double rồi * 2      -> 7.0         (.toDouble())
//   100 -> String rồi nối "%"    -> 100%        (.toString())
//   9.99 -> Int                  -> 9           (.toInt())
//   'A' -> mã số                 -> 65          (.code)
fun baiTap5() {
    // TODO
}
