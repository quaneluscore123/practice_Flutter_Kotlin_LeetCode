package bai04

// =====================================================================
// BÀI 04: CHUỖI (STRING)                             Cấp độ: 🍼 Tập bò
// =====================================================================
// 📖 LÝ THUYẾT
//   s.length            s.uppercase()       s.lowercase()      s.trim()
//   s.contains("x")     s.startsWith("x")   s.endsWith("x")
//   s.substring(a, b)   s.indexOf("x")      s.replace("a", "b")
//   s.split(" ")        s[0]  s.first()  s.last()
//   s.reversed()        s.repeat(3)         s.padStart(5, '0')
//   s.substringBefore("@")  /  s.substringAfter("@")     ← rất tiện!
//   s.isBlank() / s.isEmpty()
//   s.replaceFirstChar { it.uppercase() }  -> viết hoa chữ đầu
//   s.count { it == 'a' }  -> đếm ký tự thoả điều kiện
// =====================================================================

fun main() {
    // ---- VÍ DỤ MẪU ----
    val s = "  Hoc Kotlin Rat Vui  "
    println("[${s.trim()}] dài ${s.trim().length}")
    println(s.trim().uppercase())
    println("ha".repeat(3))
    println("kotlin".reversed())

    baiTap1()
    baiTap2()
    baiTap3()
    baiTap4()
    baiTap5()
}

// ⭐ BÀI TẬP 1: Với ten = "nguyen van quan" in ra:
//   độ dài, viết hoa, ký tự đầu, ký tự cuối, số chữ 'n' (dùng count)
fun baiTap1() {
    val ten = "nguyen van quan"
    // TODO
}

// ⭐ BÀI TẬP 2: Với email = "quan@gmail.com" lấy phần trước và sau @
// Làm 2 cách: indexOf + substring  và  substringBefore/After
fun baiTap2() {
    val email = "quan@gmail.com"
    // TODO
}

// ⭐⭐ BÀI TẬP 3: Viết hoa chữ cái đầu MỖI TỪ: "xin chao viet nam" -> "Xin Chao Viet Nam"
// Gợi ý: split(" ") rồi joinToString(" ") { ... }
fun baiTap3() {
    // TODO
}

// ⭐⭐ BÀI TẬP 4: Kiểm tra chuỗi đối xứng (palindrome): "racecar" -> true, "kotlin" -> false
fun baiTap4() {
    // TODO
}

// ⭐⭐⭐ BÀI TẬP 5: Ẩn số điện thoại "0912345678" -> "0912***678"
fun baiTap5() {
    val sdt = "0912345678"
    // TODO
}
