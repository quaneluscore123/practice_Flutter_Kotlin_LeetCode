// =====================================================================
// BÀI 10: DANH SÁCH (LIST)                           Cấp độ: 🏃 Tập chạy
// =====================================================================
// 📖 LÝ THUYẾT
// List = dãy các phần tử có thứ tự, đánh số từ 0.
//   List<int> so = [5, 3, 8];
//   so[0]             -> 5 (phần tử đầu)
//   so.length         -> 3
//   so.add(10)        thêm cuối          so.insert(0, 1)  chèn vào vị trí 0
//   so.remove(3)      xoá giá trị 3      so.removeAt(0)   xoá ở vị trí 0
//   so.contains(8)    có chứa?           so.indexOf(8)    vị trí của 8
//   so.sort()         sắp xếp tăng       so.reversed      đảo ngược
//   so.first / so.last / so.isEmpty / so.isNotEmpty
//   [...a, ...b]      ghép 2 list (spread operator)
//   [for (var x in a) x * 2]        collection for
//   [if (dieuKien) 99]              collection if
// =====================================================================

void main() {
  // ---- VÍ DỤ MẪU ----
  List<String> traiCay = ["táo", "cam", "xoài"];
  traiCay.add("chuối");
  print(traiCay);
  for (var tc in traiCay) {
    print("- $tc");
  }

  List<int> diem = [7, 9, 4, 10, 6, 8, 3];
  baiTap1(diem);
  baiTap2(diem);
  baiTap3(diem);
  baiTap4(diem);
  baiTap5([1, 2, 2, 3, 3, 3, 4]);
  baiTap6([1, 2, 3], [4, 5]);
  baiTap7([64, 25, 12, 22, 11]);
}

// ⭐ BÀI TẬP 1: Tính tổng và trung bình các phần tử.
// Kết quả: Tổng = 47, Trung bình = 6.71...
void baiTap1(List<int> ds) {
  // TODO
}

// ⭐ BÀI TẬP 2: Tìm phần tử lớn nhất và nhỏ nhất (tự viết bằng vòng lặp, không dùng sort).
// Kết quả: Max = 10, Min = 3
void baiTap2(List<int> ds) {
  // TODO
}

// ⭐ BÀI TẬP 3: Đếm có bao nhiêu điểm >= 5 (đậu).   -> 5
void baiTap3(List<int> ds) {
  // TODO
}

// ⭐⭐ BÀI TẬP 4: Tạo list mới chỉ chứa số chẵn, dùng "collection for + if":
//   [for (var x in ds) if (...) x]          -> [4, 10, 6, 8]
void baiTap4(List<int> ds) {
  // TODO
}

// ⭐⭐ BÀI TẬP 5: Xoá các phần tử trùng lặp, giữ thứ tự.   -> [1, 2, 3, 4]
// (Tự làm bằng vòng lặp + contains; ở bài 11 sẽ có cách nhanh hơn)
void baiTap5(List<int> ds) {
  // TODO
}

// ⭐⭐ BÀI TẬP 6: Ghép 2 list bằng spread operator rồi đảo ngược.
// Kết quả: [5, 4, 3, 2, 1]
void baiTap6(List<int> a, List<int> b) {
  // TODO
}

// ⭐⭐⭐ BÀI TẬP 7: Tự viết thuật toán SẮP XẾP NỔI BỌT (bubble sort), không dùng .sort()
//   Lặp nhiều lượt, mỗi lượt so sánh 2 phần tử cạnh nhau, nếu sai thứ tự thì đổi chỗ.
//   -> [11, 12, 22, 25, 64]
void baiTap7(List<int> ds) {
  // TODO
}

// ⭐⭐⭐ THỬ THÁCH: List 2 chiều (ma trận). Tính tổng đường chéo chính.
//   [[1,2,3],
//    [4,5,6],
//    [7,8,9]]   -> 1 + 5 + 9 = 15
void thuThach() {
  List<List<int>> maTran = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
  ];
  // TODO
}
