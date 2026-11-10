package bai20

// =====================================================================
// BÀI 20: XỬ LÝ LỖI (EXCEPTION)                      Cấp độ: 🚴 Tập xe đạp
// =====================================================================
// 📖 LÝ THUYẾT
//   try {
//       ...
//   } catch (e: NumberFormatException) {
//       ...
//   } catch (e: Exception) {
//       ...
//   } finally {
//       ... luôn chạy
//   }
//
//   try cũng là BIỂU THỨC:  val n = try { s.toInt() } catch (e: Exception) { 0 }
//   throw IllegalArgumentException("...")
//   require(tuoi >= 0) { "Tuổi phải >= 0" }     // ném IllegalArgumentException
//   check(daKhoiTao) { "Chưa khởi tạo" }         // ném IllegalStateException
//
//   class MyException(msg: String) : Exception(msg)      // exception tự tạo
//
//   runCatching { ... }.getOrElse { 0 }    // kiểu Kotlin hiện đại
// =====================================================================

fun main() {
    // ---- VÍ DỤ MẪU ----
    try {
        val so = "abc".toInt()
        println(so)
    } catch (e: NumberFormatException) {
        println("Không phải số: ${e.message}")
    } finally {
        println("Xong!")
    }
    val n = try { "42".toInt() } catch (e: Exception) { 0 }
    println(n)

    baiTap1("10", "0")
    baiTap1("10", "x")
    baiTap1("10", "4")
    baiTap2()
    baiTap3()
    baiTap4()
}

// ⭐ BÀI TẬP 1: Chia 2 chuỗi số. Bắt NumberFormatException và ArithmeticException.
// ⚠️ Int chia 0 -> ArithmeticException ; Double chia 0 -> Infinity (không lỗi!)
fun baiTap1(a: String, b: String) {
    // TODO
}

// ⭐ BÀI TẬP 2: listOf(1,2,3)[10] -> bắt IndexOutOfBoundsException.
// Sau đó viết lại an toàn không cần try: getOrNull(10) ?: "Không có"
fun baiTap2() {
    // TODO
}

// ⭐⭐ BÀI TẬP 3: class TuoiKhongHopLeException(msg: String) : Exception(msg)
// fun datTuoi(tuoi: Int) ném lỗi khi ngoài 0..150. Thử với 20, -5, 200.
// Làm lại bằng require(...) và so sánh.
fun baiTap3() {
    // TODO
}

// ⭐⭐⭐ BÀI TẬP 4: Dùng runCatching để đọc danh sách ["1", "2", "ba", "4"]:
// tính tổng các số hợp lệ và đếm số phần tử lỗi.  -> Tổng 7, lỗi 1
fun baiTap4() {
    // TODO
}
