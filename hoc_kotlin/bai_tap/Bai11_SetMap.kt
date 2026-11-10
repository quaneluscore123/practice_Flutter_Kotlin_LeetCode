package bai11

// =====================================================================
// BÀI 11: SET VÀ MAP                                 Cấp độ: 🏃 Tập chạy
// =====================================================================
// 📖 LÝ THUYẾT
// SET (không trùng):  setOf(...) / mutableSetOf(...)
//   a union b    a intersect b    a subtract b    ds.toSet()
//
// MAP (key -> value):
//   val m = mapOf("Quan" to 18, "Lan" to 20)       // chỉ đọc
//   val mm = mutableMapOf("Quan" to 18)
//   m["Quan"]                -> 18     (key không có -> null)
//   m.getOrDefault("X", 0)   m.getOrElse("X") { 0 }
//   mm["Minh"] = 19          mm.remove("Quan")      "Quan" in m
//   for ((k, v) in m) println("$k = $v")
//   m.keys  m.values  m.entries
// =====================================================================

fun main() {
    // ---- VÍ DỤ MẪU ----
    val mon = setOf("Toán", "Văn", "Toán")
    println(mon)

    val diem = mutableMapOf("Toán" to 8.5, "Văn" to 7.0)
    diem["Anh"] = 9.0
    for ((m, d) in diem) println("$m: $d")

    baiTap1()
    baiTap2()
    baiTap3("con meo trang con meo den con cho")
    baiTap4()
    baiTap5()
}

// ⭐ BÀI TẬP 1: lopA = {An, Bình, Chi, Dũng}, lopB = {Chi, Dũng, Em, Giang}
// In: học cả 2 lớp, tất cả, chỉ học lớp A, chỉ học 1 trong 2 lớp.
fun baiTap1() {
    // TODO
}

// ⭐ BÀI TẬP 2: Danh bạ (mutableMap): thêm, sửa, xoá, tìm, in toàn bộ.
fun baiTap2() {
    // TODO
}

// ⭐⭐ BÀI TẬP 3: Đếm tần suất từ.  -> {con=3, meo=2, trang=1, den=1, cho=1}
// Cách 1: vòng lặp + mutableMap:  dem[tu] = (dem[tu] ?: 0) + 1
// Cách 2: cau.split(" ").groupingBy { it }.eachCount()
fun baiTap3(cau: String) {
    // TODO
}

// ⭐⭐ BÀI TẬP 4: Từ điển Anh - Việt. Map 5 từ. Tra từ "cat", "dog", "xyz"
// Không có thì in "Không tìm thấy" (dùng ?: hoặc getOrElse).
fun baiTap4() {
    // TODO
}

// ⭐⭐⭐ BÀI TẬP 5: Map lồng nhau - bảng điểm:
//   "An"   to mapOf("Toán" to 8, "Văn" to 6, "Anh" to 9)
//   "Bình" to mapOf("Toán" to 5, "Văn" to 7, "Anh" to 6)
//   "Chi"  to mapOf("Toán" to 10, "Văn" to 9, "Anh" to 8)
// In ĐTB từng bạn, bạn ĐTB cao nhất, và điểm TB của từng MÔN.
fun baiTap5() {
    // TODO
}
