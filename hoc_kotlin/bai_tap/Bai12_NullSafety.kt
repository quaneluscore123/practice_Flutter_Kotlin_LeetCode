package bai12

// =====================================================================
// BÀI 12: NULL SAFETY                                Cấp độ: 🏃 Tập chạy
// =====================================================================
// 📖 LÝ THUYẾT (rất giống Dart!)
//   var a: Int = 5        không được null
//   var b: Int? = null    được null
//
//   b?.plus(1)            safe call: b null thì kết quả null
//   b ?: 0                Elvis operator (≈ ?? của Dart): b null thì dùng 0
//   b!!                   ép không null - null thì CRASH 💥 (tránh dùng)
//   b?.let { println("b = $it") }     chỉ chạy khối lệnh nếu b khác null
//   if (b != null) { b + 1 }          smart cast
//   "abc".toIntOrNull()   -> null thay vì crash
//   lateinit var ten: String          hứa gán sau (≈ late của Dart)
//
// 🔁 Dart  ??  →  Kotlin  ?:     |   Dart  !  →  Kotlin  !!
// =====================================================================

fun main() {
    // ---- VÍ DỤ MẪU ----
    var soLuong: Int? = null
    println(soLuong ?: 0)
    soLuong = 5
    soLuong?.let { println("Có $it sản phẩm") }

    val biDanh: String? = null
    println(biDanh?.length)          // null
    println(biDanh?.length ?: 0)     // 0

    baiTap1(null)
    baiTap1("Quan")
    baiTap2()
    println(baiTap3(listOf("5", "abc", "12", "", "7")))
    baiTap4()
}

// ⭐ BÀI TẬP 1: "Xin chào, <ten>" hoặc "Xin chào, khách". Làm 3 cách: if, ?:, let
fun baiTap1(ten: String?) {
    // TODO
}

// ⭐⭐ BÀI TẬP 2: Chuỗi gọi an toàn.
//   class DiaChi(val thanhPho: String?)
//   class Nguoi(val ten: String, val diaChi: DiaChi?)
// Tạo 3 người: có đủ địa chỉ, có địa chỉ nhưng thanhPho null, không có địa chỉ.
// In thành phố của mỗi người: nguoi.diaChi?.thanhPho ?: "Chưa rõ"
// (Bạn có thể khai báo class ngay trong hàm hoặc ở ngoài hàm)
fun baiTap2() {
    // TODO
}

// ⭐⭐ BÀI TẬP 3: ["5", "abc", "12", "", "7"] -> [5, 12, 7]
// Cách 1: vòng lặp + toIntOrNull   Cách 2: ds.mapNotNull { it.toIntOrNull() }
fun baiTap3(ds: List<String>): List<Int> {
    return emptyList() // TODO
}

// ⭐⭐ BÀI TẬP 4: Đoạn code sau sẽ crash. Sửa lại cho an toàn (không dùng !!):
//   val s: String? = null
//   println(s!!.uppercase())
fun baiTap4() {
    // TODO
}
