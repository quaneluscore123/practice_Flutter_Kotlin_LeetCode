package bai05

// =====================================================================
// BÀI 05: IF / ELSE                                  Cấp độ: 🚶 Tập đi
// =====================================================================
// 📖 LÝ THUYẾT
//   if (dk) { ... } else if (dk2) { ... } else { ... }
//
// ⭐ Đặc biệt trong Kotlin: if là BIỂU THỨC -> trả về giá trị được!
//   val loai = if (tuoi >= 18) "Người lớn" else "Trẻ em"
// (Kotlin KHÔNG có toán tử 3 ngôi  a ? b : c  như Dart - dùng if thay thế)
// =====================================================================

fun main() {
    // ---- VÍ DỤ MẪU ----
    val tuoi = 18
    val loai = if (tuoi >= 18) "Người lớn" else "Trẻ em"
    println("Tuổi $tuoi: $loai")

    baiTap1(-5)
    baiTap2(8.5)
    baiTap3(2024)
    baiTap4(3, 9, 6)
    baiTap5(3, 4, 5)
}

// ⭐ BÀI TẬP 1: In "Số dương" / "Số âm" / "Số không".
// Viết bằng if BIỂU THỨC: val ketQua = if (...) ... else if (...) ... else ...
fun baiTap1(n: Int) {
    // TODO
}

// ⭐ BÀI TẬP 2: Xếp loại học lực:
//   >= 9 Xuất sắc | >= 8 Giỏi | >= 6.5 Khá | >= 5 Trung bình | còn lại Yếu
//   ngoài 0..10: "Điểm không hợp lệ"
fun baiTap2(diem: Double) {
    // TODO
}

// ⭐⭐ BÀI TẬP 3: Năm nhuận? (chia hết 400) HOẶC (chia hết 4 VÀ không chia hết 100)
fun baiTap3(nam: Int) {
    // TODO
}

// ⭐⭐ BÀI TẬP 4: Số lớn nhất trong 3 số (không dùng maxOf).
fun baiTap4(a: Int, b: Int, c: Int) {
    // TODO
}

// ⭐⭐⭐ BÀI TẬP 5: Cho 3 cạnh a, b, c. Kiểm tra:
//   - Có phải tam giác không? (tổng 2 cạnh bất kỳ > cạnh còn lại)
//   - Nếu có: tam giác đều / cân / vuông / thường?
//   (3, 4, 5) -> Tam giác vuông
fun baiTap5(a: Int, b: Int, c: Int) {
    // TODO
}
