package bai10

// =====================================================================
// BÀI 10: MẢNG (ARRAY) VÀ DANH SÁCH (LIST)           Cấp độ: 🏃 Tập chạy
// =====================================================================
// 📖 LÝ THUYẾT
// ⚠️ Kotlin phân biệt rõ:
//   listOf(1, 2, 3)          List CHỈ ĐỌC (không thêm/xoá được)
//   mutableListOf(1, 2, 3)   List THAY ĐỔI ĐƯỢC
//   arrayOf(1, 2, 3)         Mảng: kích thước CỐ ĐỊNH, sửa phần tử được
//   IntArray(5)              mảng 5 số 0
//
//   ds[0]  ds.size  ds.first()  ds.last()  ds.indexOf(x)  x in ds
//   ds.add(x)  ds.add(0, x)  ds.remove(x)  ds.removeAt(i)  ds[i] = x
//   ds.sorted() (trả list mới)    ds.sort() (sắp xếp tại chỗ, chỉ với mutable)
//   ds.reversed()  ds.sum()  ds.max()  ds.min()  ds.average()
//   ds + listOf(4, 5)        ghép
//   ds.joinToString(", ")    nối thành chuỗi
//   List(5) { it * it }      tạo list [0, 1, 4, 9, 16]
// =====================================================================

fun main() {
    // ---- VÍ DỤ MẪU ----
    val traiCay = mutableListOf("táo", "cam", "xoài")
    traiCay.add("chuối")
    println(traiCay)
    for ((i, tc) in traiCay.withIndex()) println("$i. $tc")

    val chiDoc = listOf(1, 2, 3)
    // chiDoc.add(4)   // ❌ lỗi: List chỉ đọc không có add

    val diem = listOf(7, 9, 4, 10, 6, 8, 3)
    baiTap1(diem)
    baiTap2(diem)
    baiTap3()
    baiTap4(listOf(1, 2, 2, 3, 3, 3, 4))
    baiTap5(mutableListOf(64, 25, 12, 22, 11))
    baiTap6()
}

// ⭐ BÀI TẬP 1: Tổng, trung bình, max, min - TỰ VIẾT bằng vòng lặp.
// Sau đó kiểm tra lại bằng sum(), average(), max(), min().
fun baiTap1(ds: List<Int>) {
    // TODO
}

// ⭐ BÀI TẬP 2: Đếm số điểm >= 5, và in các điểm theo thứ tự giảm dần.
fun baiTap2(ds: List<Int>) {
    // TODO
}

// ⭐⭐ BÀI TẬP 3: Danh sách việc cần làm (mutableList):
//   thêm 3 việc, đánh dấu xong việc thứ 2 (xoá đi), chèn 1 việc khẩn lên đầu,
//   in danh sách dạng:  1. Việc A \n 2. Việc B ...
fun baiTap3() {
    // TODO
}

// ⭐⭐ BÀI TẬP 4: Xoá trùng lặp giữ thứ tự (tự làm với vòng lặp). -> [1, 2, 3, 4]
// 🎁 Cách nhanh: ds.distinct()
fun baiTap4(ds: List<Int>) {
    // TODO
}

// ⭐⭐⭐ BÀI TẬP 5: Tự viết Selection Sort (không dùng sort):
//   Mỗi lượt tìm phần tử nhỏ nhất trong phần chưa sắp xếp và đổi lên đầu.
fun baiTap5(ds: MutableList<Int>) {
    // TODO
}

// ⭐⭐⭐ BÀI TẬP 6: Mảng 2 chiều. Tạo ma trận 3x3 và in ra ma trận CHUYỂN VỊ.
//   1 2 3        1 4 7
//   4 5 6   ->   2 5 8
//   7 8 9        3 6 9
// Gợi ý: val mt = arrayOf(intArrayOf(1,2,3), intArrayOf(4,5,6), intArrayOf(7,8,9))
fun baiTap6() {
    // TODO
}
