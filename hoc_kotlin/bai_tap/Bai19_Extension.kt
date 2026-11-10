package bai19

// =====================================================================
// BÀI 19: EXTENSION FUNCTION & INFIX & OPERATOR       Cấp độ: 🚴 Tập xe đạp
// =====================================================================
// 📖 LÝ THUYẾT
// 1) Extension: thêm hàm cho class có sẵn.
//      fun String.vietHoaChuDau() = replaceFirstChar { it.uppercase() }
//      val Int.laSoChan: Boolean get() = this % 2 == 0     // extension property
//
// 2) infix: gọi hàm không cần dấu chấm và ngoặc (như "to" trong mapOf)
//      infix fun Int.luyThua(n: Int): Long = ...
//      2 luyThua 10
//
// 3) operator overloading: định nghĩa + - * == [] ... cho class của bạn
//      data class Vector(val x: Int, val y: Int) {
//          operator fun plus(v: Vector) = Vector(x + v.x, y + v.y)
//      }
//      Vector(1, 2) + Vector(3, 4)
// =====================================================================

fun String.vietHoaChuDau() = replaceFirstChar { it.uppercase() }

fun main() {
    // ---- VÍ DỤ MẪU ----
    println("kotlin".vietHoaChuDau())

    // ---- Bỏ comment để kiểm tra ----
    // println("madam".laDoiXung)                  // true
    // println("xin chao viet nam".vietHoaMoiTu()) // Xin Chao Viet Nam
    // println("Hello World".demNguyenAm())        // 3
    // println(7.laSoNguyenTo)                     // true
    // println(1500000.dinhDangTien())             // 1.500.000đ
    // println(2 luyThua 10)                       // 1024
    // println(listOf(3, 1, 2).thuHai())           // 1
    // val a = PhanSo(1, 2); val b = PhanSo(1, 3)
    // println(a + b)                              // 5/6
    // println(a * b)                              // 1/6
    // println(a > b)                              // true
}

// ⭐ BÀI TẬP 1: Extension cho String:
//   val String.laDoiXung: Boolean     fun String.vietHoaMoiTu(): String
//   fun String.demNguyenAm(): Int     (a e i o u, không phân biệt hoa thường)
// TODO

// ⭐⭐ BÀI TẬP 2: Extension cho Int:
//   val Int.laSoNguyenTo: Boolean      fun Int.dinhDangTien(): String
//   infix fun Int.luyThua(n: Int): Long
// TODO

// ⭐⭐ BÀI TẬP 3: Extension generic cho List:  fun <T> List<T>.thuHai(): T?
// (trả về phần tử thứ 2, không có thì null)
// TODO

// ⭐⭐⭐ BÀI TẬP 4: data class PhanSo(tu, mau) với operator plus, minus, times, div
// (kết quả luôn rút gọn), compareTo (để dùng được > <), toString "tu/mau".
// TODO
