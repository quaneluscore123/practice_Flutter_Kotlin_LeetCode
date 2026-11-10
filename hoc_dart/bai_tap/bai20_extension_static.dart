// =====================================================================
// BÀI 20: EXTENSION, STATIC, FACTORY, COPYWITH        Cấp độ: 🚴 Tập xe đạp
// =====================================================================
// 📖 LÝ THUYẾT
// 1) Extension: THÊM method cho class có sẵn mà không cần sửa class đó.
//      extension XuLyChuoi on String {
//        String vietHoaChuDau() => this[0].toUpperCase() + substring(1);
//      }
//      "dart".vietHoaChuDau()  -> "Dart"
//
// 2) factory constructor: constructor có thể trả về object có sẵn,
//    hoặc tạo object từ dữ liệu khác (VD: từ JSON - dùng RẤT nhiều trong Flutter)
//      factory User.fromJson(Map<String, dynamic> json) =>
//          User(json["ten"], json["tuoi"]);
//
// 3) copyWith: tạo bản sao có thay đổi 1 vài thuộc tính (object bất biến).
//      User copyWith({String? ten, int? tuoi}) =>
//          User(ten ?? this.ten, tuoi ?? this.tuoi);
// =====================================================================

extension XuLyChuoi on String {
  String vietHoaChuDau() => isEmpty ? this : this[0].toUpperCase() + substring(1);
}

void main() {
  // ---- VÍ DỤ MẪU ----
  print("dart".vietHoaChuDau());

  // ---- Bỏ comment để kiểm tra ----
  // print("madam".laDoiXung);                 // true
  // print("xin chào việt nam".vietHoaMoiTu()); // Xin Chào Việt Nam
  // print(7.laSoNguyenTo);                    // true
  // print(5.giaiThua());                      // 120
  // print([3, 1, 2].tongCong);                // 6
  // print(1500000.dinhDangTien());            // 1.500.000đ
  //
  // var u = User.fromJson({"ten": "Quan", "tuoi": 18, "email": "q@mail.com"});
  // print(u);                                 // User(Quan, 18, q@mail.com)
  // print(u.toJson());                        // {ten: Quan, tuoi: 18, email: q@mail.com}
  // var u2 = u.copyWith(tuoi: 19);
  // print(u2);                                // User(Quan, 19, q@mail.com)
}

// ⭐ BÀI TẬP 1: Thêm vào extension XuLyChuoi:
//   - getter  bool get laDoiXung   (chuỗi đọc xuôi ngược như nhau)
//   - method  String vietHoaMoiTu()

// ⭐⭐ BÀI TẬP 2: Viết extension on int:
//   - bool get laSoNguyenTo
//   - int giaiThua()
//   - String dinhDangTien()  1500000 -> "1.500.000đ"
// TODO

// ⭐⭐ BÀI TẬP 3: Viết extension on List<int>:  int get tongCong
// TODO

// ⭐⭐⭐ BÀI TẬP 4: Class User (ten, tuoi, email) - tất cả là final.
//   - factory User.fromJson(Map<String, dynamic> json)
//   - Map<String, dynamic> toJson()
//   - User copyWith({...})
//   - toString()
// 👉 Đây là mẫu class model bạn sẽ viết HÀNG NGÀY khi làm Flutter!
// TODO

// ⭐⭐⭐ BÀI TẬP 5: Singleton bằng factory. Class CauHinh chỉ có DUY NHẤT 1 object:
//   var a = CauHinh(); var b = CauHinh();
//   print(identical(a, b)); // true
// Gợi ý:
//   static final CauHinh _instance = CauHinh._noiBo();
//   CauHinh._noiBo();
//   factory CauHinh() => _instance;
// TODO
