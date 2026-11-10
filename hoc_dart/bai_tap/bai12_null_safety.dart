// =====================================================================
// BÀI 12: NULL SAFETY                                Cấp độ: 🏃 Tập chạy
// =====================================================================
// 📖 LÝ THUYẾT
// null = "không có giá trị". Dart bắt bạn phải nói rõ biến nào ĐƯỢC PHÉP null.
//   int a = 5;        // KHÔNG được null
//   int? b;           // ĐƯỢC null (mặc định là null)
//
//   b ?? 0            nếu b null thì dùng 0
//   b ??= 10          nếu b đang null thì gán 10
//   ten?.length       nếu ten null thì cả biểu thức = null (không bị lỗi)
//   b!                "tôi chắc chắn b không null" -> nếu sai sẽ CRASH ⚠️
//   if (b != null) { ... b lúc này được coi như int ... }   // smart cast
//   late String x;    hứa sẽ gán giá trị trước khi dùng
// =====================================================================

void main() {
  // ---- VÍ DỤ MẪU (giống vdu2.dart của bạn) ----
  int? soLuong;
  print(soLuong);          // null
  print(soLuong ?? 0);     // 0
  soLuong ??= 5;
  print(soLuong);          // 5

  String? biDanh;
  print(biDanh?.length);   // null, không lỗi

  baiTap1(null);
  baiTap1("Quan");
  baiTap2();
  print(baiTap3(["5", "abc", "12", "", "7"]));
  baiTap4();
}

// ⭐ BÀI TẬP 1: In ra "Xin chào, <ten>" nếu ten không null,
// ngược lại in "Xin chào, khách". Làm theo 2 cách: dùng if và dùng ??
void baiTap1(String? ten) {
  // TODO
}

// ⭐⭐ BÀI TẬP 2: Cho Map<String, int> kho = {"táo": 10, "cam": 0};
// Viết code in ra số lượng của "táo", "cam", "nho".
// Hàng không có trong kho thì in "Không có hàng". (kho["nho"] trả về null!)
void baiTap2() {
  Map<String, int> kho = {"táo": 10, "cam": 0};
  // TODO
}

// ⭐⭐ BÀI TẬP 3: Chuyển list chuỗi thành list số, bỏ qua chuỗi không hợp lệ.
// int.tryParse("abc") trả về null thay vì crash.
// ["5", "abc", "12", "", "7"] -> [5, 12, 7]
List<int> baiTap3(List<String> ds) {
  return []; // TODO
}

// ⭐⭐ BÀI TẬP 4: Chạy thử đoạn code sau, đọc lỗi, rồi SỬA cho an toàn
// (không dùng dấu !):
//   String? s;
//   print(s!.toUpperCase());
void baiTap4() {
  // TODO
}
