// =====================================================================
// BÀI 02: BIẾN VÀ KIỂU DỮ LIỆU                      Cấp độ: 🍼 Tập bò
// =====================================================================
// 🎯 Mục tiêu: Biết cách "cất" dữ liệu vào biến và các kiểu cơ bản.
//
// 📖 LÝ THUYẾT
// Biến giống như một cái hộp có tên, bên trong chứa giá trị.
//   int     -> số nguyên        : 10, -3, 0
//   double  -> số thực          : 3.14, 9.5
//   String  -> chuỗi chữ        : "Xin chào"
//   bool    -> đúng/sai         : true, false
//   var     -> để Dart tự đoán kiểu (đoán xong thì KHÔNG đổi kiểu được)
//   dynamic -> kiểu gì cũng được, đổi thoải mái (hạn chế dùng)
//
//   final -> gán 1 lần duy nhất, giá trị có thể biết lúc chạy chương trình
//   const -> hằng số, phải biết giá trị ngay lúc viết code
//
// Chèn biến vào chuỗi: "Tên: $ten"  hoặc biểu thức: "Năm sau: ${tuoi + 1}"
// Xem kiểu của biến:   bien.runtimeType
// =====================================================================

void main() {
  // ---- VÍ DỤ MẪU ----
  String ten = "Quan";
  int tuoi = 18;
  double chieuCao = 1.72;
  bool laSinhVien = true;
  print("$ten, $tuoi tuổi, cao ${chieuCao}m, sinh viên: $laSinhVien");

  baiTap1();
  baiTap2();
  baiTap3();
  baiTap4();
  baiTap5();
}

// ⭐ BÀI TẬP 1: Tạo 4 biến mô tả 1 cuốn sách:
//   tenSach (String), soTrang (int), gia (double), conHang (bool)
// rồi in ra:  Sách: Dế Mèn | 120 trang | 45000.0đ | Còn hàng: true
void baiTap1() {
  // TODO
  String tenSach = "Dế Mèn";
  int soTrang = 120;
  double gia = 45000.0;
  bool conHang = true;
  print("Sách: $tenSach | $soTrang trang | ${gia}đ | Còn hàng: $conHang");
}

// ⭐ BÀI TẬP 2: Khai báo var x = 10; rồi in ra x.runtimeType.
// Sau đó thêm dòng  x = "mười";  xem lỗi gì? Vì sao? (rồi xoá dòng đó đi)
// Làm lại với dynamic y = 10; y = "mười"; -> có lỗi không?
void baiTap2() {
  // TODO
  var x = 10; // gán kiểu 1 lần, sẽ không thể đổi nhiều lần nếu gán nhiều kiểu như dynamic
  print(x.runtimeType);
  // x = "mười";
  print(x);

  dynamic y = 10; // đổi kiểu tuỳ ý mỗi lần dùng kiểu dữ liệu với biến đó, hạn chế dùng 
  y = "mười";
  print(y);
}

// ⭐ BÀI TẬP 3: Khai báo 1 biến final và 1 biến const.
// Thử gán lại giá trị cho chúng -> đọc thông báo lỗi -> rồi xoá dòng lỗi đi.
// Ghi lại bằng comment: final khác const ở điểm nào?
// Gợi ý: final bayGio = DateTime.now();  (được)  -  const bayGio = DateTime.now(); (lỗi!)
void baiTap3() {
  // TODO
// Giống nhau: cả final và const đều KHÔNG gán lại được.
// Khác nhau ở thời điểm biết giá trị:
//  - final: biết lúc CHẠY chương trình  -> final x = DateTime.now(); ✅
//  - const: biết lúc VIẾT CODE (biên dịch) -> const y = "Quan"; ✅
//           const z = DateTime.now(); ❌ vì phải chạy mới biết giờ
  final x = DateTime.now();
  const y = "Quan";
  print(y);
  print(x);
}

// ⭐⭐ BÀI TẬP 4: Hoán đổi giá trị 2 biến a = 5, b = 9 (dùng thêm biến tạm).
// Kết quả mong đợi: Trước: a=5, b=9  ->  Sau: a=9, b=5
void baiTap4() {
  int a = 5;
  int b = 9;
  print("Trước: a=$a, b=$b");
  // TODO: hoán đổi
  int x = a;
  a = b;
  b = x;
  print("Sau: a=$a, b=$b");
}

// ⭐⭐ BÀI TẬP 5: Chuyển kiểu dữ liệu
//   - Chuyển chuỗi "25" thành số int rồi cộng thêm 5  -> 30
//   - Chuyển chuỗi "3.5" thành double rồi nhân 2     -> 7.0
//   - Chuyển số 100 thành chuỗi rồi nối với "%"       -> 100%
//   - Chuyển 9.99 thành int (bỏ phần thập phân)       -> 9
// Gợi ý: int.parse(), double.parse(), .toString(), .toInt()
void baiTap5() {
  // TODO
  String soNguyen = "25";
  String thapPhan = "3.5";
  int x = 100;
  double y = 9.99;
  print(int.parse(soNguyen) + 5);
  print(double.parse(thapPhan) * 2);
  print(x.toString() + "%");
  print(y.toInt());
}
