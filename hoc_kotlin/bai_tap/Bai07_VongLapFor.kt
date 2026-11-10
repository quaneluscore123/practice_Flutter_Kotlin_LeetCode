package bai07

// =====================================================================
// BÀI 07: VÒNG LẶP FOR & RANGE                       Cấp độ: 🚶 Tập đi
// =====================================================================
// 📖 LÝ THUYẾT
//   for (i in 1..5)            1, 2, 3, 4, 5       (gồm cả 5)
//   for (i in 0 until 5)       0, 1, 2, 3, 4       (không gồm 5)  - hoặc 0..<5
//   for (i in 10 downTo 1)     10, 9, ..., 1       (đếm ngược)
//   for (i in 0..20 step 5)    0, 5, 10, 15, 20    (bước nhảy)
//   for (x in danhSach)        duyệt từng phần tử
//   for ((i, x) in ds.withIndex())   vừa có vị trí vừa có giá trị
//   repeat(3) { println("Hi") }      lặp 3 lần
//   break / continue
//   Nhãn: outer@ for (...) { for (...) { break@outer } }   thoát vòng ngoài
//
// 🔁 So với Dart:  for (int i = 0; i < 5; i++)  ->  for (i in 0 until 5)
// =====================================================================

fun main() {
    // ---- VÍ DỤ MẪU ----
    for (i in 1..3) println("Lần $i")
    for (i in 10 downTo 0 step 5) print("$i ")
    println()
    repeat(2) { println("Xin chào lần ${it + 1}") }

    baiTap1()
    baiTap2(10)
    baiTap3(7)
    baiTap4(5)
    baiTap5(5)
    baiTap6(5)
    baiTap7()
}

// ⭐ BÀI TẬP 1: In số chẵn 0..20 trên 1 dòng (dùng step).
fun baiTap1() {
    // TODO
}

// ⭐ BÀI TẬP 2: Tổng 1..n.  n = 10 -> 55.  🎁 Thử thêm cách 1 dòng: (1..n).sum()
fun baiTap2(n: Int) {
    // TODO
}

// ⭐ BÀI TẬP 3: Bảng cửu chương n.
fun baiTap3(n: Int) {
    // TODO
}

// ⭐⭐ BÀI TẬP 4: Giai thừa n! (dùng Long để không bị tràn số).  5! = 120
fun baiTap4(n: Int) {
    // TODO
}

// ⭐⭐ BÀI TẬP 5: Tam giác sao ngược, n = 5:
//   *****
//   ****
//   ***
//   **
//   *
fun baiTap5(n: Int) {
    // TODO
}

// ⭐⭐⭐ BÀI TẬP 6: Kim tự tháp số, n = 5:
//       1
//      121
//     12321
//    1234321
//   123454321
fun baiTap6(n: Int) {
    // TODO
}

// ⭐⭐⭐ BÀI TẬP 7: Tìm tất cả bộ 3 số (a, b, c) với 1 <= a < b < c <= 20
// sao cho a² + b² = c²  (bộ ba Pythagoras).   -> (3,4,5) (5,12,13) (6,8,10) ...
fun baiTap7() {
    // TODO
}
