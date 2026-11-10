// =====================================================================
// BÀI 13: HÀM ẨN DANH, LAMBDA & XỬ LÝ DANH SÁCH      Cấp độ: 🏃 Tập chạy
// =====================================================================
// 📖 LÝ THUYẾT
// Trong Dart, hàm cũng là một GIÁ TRỊ: gán được vào biến, truyền vào hàm khác.
//   var binhPhuong = (int x) => x * x;
//   int Function(int, int) cong = (a, b) => a + b;
//
// Các hàm "thần thánh" của List (rất hay dùng trong Flutter):
//   ds.map((x) => x * 2)            biến đổi từng phần tử
//   ds.where((x) => x > 5)          lọc
//   ds.reduce((a, b) => a + b)      gộp lại thành 1 giá trị
//   ds.fold<int>(0, (tong, x) => tong + x)   giống reduce nhưng có giá trị đầu
//   ds.any((x) => x > 9)            có ÍT NHẤT 1 phần tử thoả?
//   ds.every((x) => x > 0)          TẤT CẢ đều thoả?
//   ds.firstWhere((x) => x > 5, orElse: () => -1)
//   ds.sort((a, b) => b.compareTo(a))   sắp xếp giảm dần
//   ds.take(3) / ds.skip(2)
// Lưu ý: map/where trả về Iterable -> dùng .toList() để thành List.
// =====================================================================

void main() {
  // ---- VÍ DỤ MẪU ----
  List<int> so = [1, 2, 3, 4, 5, 6];
  print(so.map((x) => x * 10).toList());         // [10, 20, 30, 40, 50, 60]
  print(so.where((x) => x.isOdd).toList());      // [1, 3, 5]
  print(so.fold<int>(0, (tong, x) => tong + x)); // 21  (ghi rõ <int> cho fold)

  baiTap1();
  baiTap2();
  baiTap3();
  baiTap4();
  baiTap5();
}

// ⭐ BÀI TẬP 1: Cho ten = ["an", "bình", "chi"].
// Dùng map để viết hoa tất cả -> [AN, BÌNH, CHI]
// Dùng map để tạo câu chào   -> [Chào an, Chào bình, Chào chi]
void baiTap1() {
  List<String> ten = ["an", "bình", "chi"];
  // TODO
}

// ⭐ BÀI TẬP 2: Cho gia = [120000, 45000, 300000, 89000, 15000]
//   - Lọc các món > 50000           -> [120000, 300000, 89000]
//   - Tổng tiền (dùng fold)         -> 569000
//   - Có món nào > 250000 không?    -> true
//   - Tất cả món đều > 10000?       -> true
void baiTap2() {
  List<int> gia = [120000, 45000, 300000, 89000, 15000];
  // TODO
}

// ⭐⭐ BÀI TẬP 3: Viết hàm apDung nhận 1 list và 1 HÀM, trả về list mới.
//   apDung([1,2,3], (x) => x + 100)  -> [101, 102, 103]
// (Đây chính là tự viết lại hàm map!)
void baiTap3() {
  // TODO: gọi thử hàm apDung
}

List<int> apDung(List<int> ds, int Function(int) f) {
  return []; // TODO
}

// ⭐⭐ BÀI TẬP 4: Sắp xếp danh sách tên theo ĐỘ DÀI tăng dần, rồi theo bảng chữ cái giảm dần.
//   ["Quan", "An", "Thanh", "Bi"]  -> theo độ dài: [An, Bi, Quan, Thanh]
void baiTap4() {
  List<String> ds = ["Quan", "An", "Thanh", "Bi"];
  // TODO
}

// ⭐⭐⭐ BÀI TẬP 5: Hàm trả về hàm (closure).
// Viết hàm taoBoDem() trả về 1 hàm, mỗi lần gọi hàm đó thì số đếm tăng 1.
//   var dem = taoBoDem();
//   print(dem()); // 1
//   print(dem()); // 2
//   print(dem()); // 3
void baiTap5() {
  // TODO
}

// int Function() taoBoDem() { ... }
