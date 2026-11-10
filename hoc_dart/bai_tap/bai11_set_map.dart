// =====================================================================
// BÀI 11: SET VÀ MAP                                 Cấp độ: 🏃 Tập chạy
// =====================================================================
// 📖 LÝ THUYẾT
// SET = tập hợp KHÔNG trùng lặp, không quan tâm vị trí.
//   Set<int> s = {1, 2, 3};
//   s.add(2)  -> không thêm vì đã có
//   a.union(b) hợp | a.intersection(b) giao | a.difference(b) hiệu
//   list.toSet() -> xoá trùng nhanh
//
// MAP = từ điển, lưu cặp KEY -> VALUE (key không trùng).
//   Map<String, int> tuoi = {"Quan": 18, "Lan": 20};
//   tuoi["Quan"]                 -> 18
//   tuoi["Minh"] = 19;           thêm / sửa
//   tuoi.remove("Lan");          xoá
//   tuoi.containsKey("Quan")     có key không?
//   tuoi.keys / tuoi.values / tuoi.entries
//   for (var e in tuoi.entries) print("${e.key}: ${e.value}");
//   tuoi.forEach((k, v) => print("$k = $v"));
// =====================================================================

void main() {
  // ---- VÍ DỤ MẪU ----
  Set<String> mon = {"Toán", "Văn", "Toán"};
  print(mon); // {Toán, Văn}

  Map<String, double> diem = {"Toán": 8.5, "Văn": 7.0};
  diem["Anh"] = 9.0;
  diem.forEach((mon, d) => print("$mon: $d"));

  baiTap1();
  baiTap2();
  baiTap3("con meo trang con meo den con cho");
  baiTap4("hello world");
  baiTap5();
}

// ⭐ BÀI TẬP 1: Cho 2 lớp học thêm:
//   lopA = {"An", "Bình", "Chi", "Dũng"}  ;  lopB = {"Chi", "Dũng", "Em", "Giang"}
// In ra: những bạn học cả 2 lớp, tất cả các bạn, những bạn chỉ học lớp A.
void baiTap1() {
  // TODO
}

// ⭐ BÀI TẬP 2: Tạo Map danh bạ: tên -> số điện thoại (3 người).
//   - In toàn bộ danh bạ
//   - Thêm 1 người, sửa số của 1 người, xoá 1 người
//   - Kiểm tra "Quan" có trong danh bạ không
void baiTap2() {
  // TODO
}

// ⭐⭐ BÀI TẬP 3: Đếm số lần xuất hiện của mỗi từ trong câu.
// Kết quả: {con: 3, meo: 2, trang: 1, den: 1, cho: 1}
// Gợi ý: dem[tu] = (dem[tu] ?? 0) + 1;
void baiTap3(String cau) {
  // TODO
}

// ⭐⭐ BÀI TẬP 4: Đếm số lần xuất hiện mỗi ký tự (bỏ qua khoảng trắng),
// rồi in ra ký tự xuất hiện NHIỀU NHẤT.   "hello world" -> 'l' (3 lần)
void baiTap4(String s) {
  // TODO
}

// ⭐⭐⭐ BÀI TẬP 5: Map lồng nhau. Bảng điểm:
//   {
//     "An":   {"Toán": 8, "Văn": 6, "Anh": 9},
//     "Bình": {"Toán": 5, "Văn": 7, "Anh": 6},
//     "Chi":  {"Toán": 10, "Văn": 9, "Anh": 8},
//   }
// In điểm trung bình của từng bạn, và tên bạn có điểm TB cao nhất.
void baiTap5() {
  Map<String, Map<String, int>> bangDiem = {
    "An": {"Toán": 8, "Văn": 6, "Anh": 9},
    "Bình": {"Toán": 5, "Văn": 7, "Anh": 6},
    "Chi": {"Toán": 10, "Văn": 9, "Anh": 8},
  };
  // TODO
}
