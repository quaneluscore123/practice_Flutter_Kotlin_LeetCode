package bai08

// =====================================================================
// BÀI 08: WHILE & DO-WHILE                           Cấp độ: 🚶 Tập đi
// =====================================================================
// 📖 LÝ THUYẾT
//   while (dk) { ... }            kiểm tra trước
//   do { ... } while (dk)         chạy ít nhất 1 lần
// Đọc từ bàn phím:  val s = readln()           (Kotlin 1.6+)
//                   val n = readln().toInt()
//                   val m = readlnOrNull()?.toIntOrNull()   (an toàn hơn)
// Số ngẫu nhiên:    val r = (1..100).random()
// =====================================================================

fun main() {
    // ---- VÍ DỤ MẪU ----
    var dem = 3
    while (dem > 0) {
        println("Đếm ngược: $dem")
        dem--
    }
    println("Phóng! 🚀")

    baiTap1(12345)
    baiTap2(48, 18)
    baiTap3(29)
    baiTap4(6)
    // baiTap5()   // trò chơi cần nhập bàn phím - bỏ comment khi làm
}

// ⭐ BÀI TẬP 1: Tính tổng các chữ số của n. 12345 -> 15
fun baiTap1(n: Int) {
    // TODO
}

// ⭐⭐ BÀI TẬP 2: UCLN (Euclid) và BCNN của a, b.  (48, 18) -> UCLN 6, BCNN 144
// BCNN = a * b / UCLN
fun baiTap2(a: Int, b: Int) {
    // TODO
}

// ⭐⭐ BÀI TẬP 3: Số nguyên tố? Chỉ cần thử chia đến căn bậc 2 của n (i * i <= n).
fun baiTap3(n: Int) {
    // TODO
}

// ⭐⭐ BÀI TẬP 4: Dãy Collatz: nếu n chẵn -> n/2, lẻ -> 3n+1, lặp tới khi n = 1.
// In dãy và đếm số bước.  n = 6: 6 3 10 5 16 8 4 2 1 (8 bước)
fun baiTap4(n: Int) {
    // TODO
}

// ⭐⭐⭐ BÀI TẬP 5: Trò chơi đoán số (do-while + readln).
// Máy chọn số (1..100).random(). Người chơi nhập số, máy báo "Lớn quá"/"Nhỏ quá".
// Đúng thì in số lần đoán. Nhập chữ thì báo "Vui lòng nhập số" (dùng toIntOrNull).
// ⚠️ Chạy trong IntelliJ để nhập được từ bàn phím. Bỏ comment dòng baiTap5() khi sẵn sàng.
fun baiTap5() {
    // TODO
}
