// =====================================================================
// BÀI 16: ABSTRACT, INTERFACE, MIXIN                 Cấp độ: 🚴 Tập xe đạp
// =====================================================================
// 📖 LÝ THUYẾT
// 1) abstract class: lớp "khung", KHÔNG tạo object trực tiếp được.
//    Có thể chứa method chưa viết thân -> class con BẮT BUỘC phải viết.
//      abstract class Hinh {
//        double dienTich();                // abstract method
//        void inRa() => print("Diện tích: ${dienTich()}");
//      }
//
// 2) implements: "ký hợp đồng" - phải viết lại TẤT CẢ method của lớp đó.
//    Một class có thể implements NHIỀU lớp:  class A implements B, C { }
//    (Dart 3: dùng `interface class` nếu chỉ muốn cho phép implements)
//
// 3) mixin: "gói kỹ năng" có thể gắn vào nhiều class khác nhau.
//      mixin BietBoi { void boi() => print("Đang bơi"); }
//      class Vit extends DongVat with BietBoi, BietBay { }
//
// Ghi nhớ:  extends = LÀ MỘT (Chó là Động vật)
//           implements = CAM KẾT LÀM ĐƯỢC
//           with = CÓ THÊM KỸ NĂNG
// =====================================================================

abstract class Hinh {
  String get ten;
  double dienTich();
  double chuVi();
  void inThongTin() =>
      print("$ten: S = ${dienTich().toStringAsFixed(2)}, P = ${chuVi().toStringAsFixed(2)}");
}

void main() {
  // ---- Bỏ comment để kiểm tra ----
  // List<Hinh> ds = [HinhTron(2), HinhVuong(3), TamGiac(3, 4, 5)];
  // for (var h in ds) h.inThongTin();
  // Hình tròn: S = 12.57, P = 12.57
  // Hình vuông: S = 9.00, P = 12.00
  // Tam giác: S = 6.00, P = 12.00
  //
  // var vit = Vit("Donald");
  // vit.boi(); vit.bay(); vit.chay();
}

// ⭐ BÀI TẬP 1: Viết HinhTron(banKinh) và HinhVuong(canh) extends Hinh.
// Gợi ý: import 'dart:math'; dùng pi.  (đặt import ở ĐẦU file)
// TODO

// ⭐⭐ BÀI TẬP 2: Viết TamGiac(a, b, c). Diện tích dùng công thức Heron:
//   p = (a+b+c)/2 ;  S = sqrt(p*(p-a)*(p-b)*(p-c))
// TODO

// ⭐⭐ BÀI TẬP 3: Tạo 3 mixin: BietBoi, BietBay, BietChay.
// Tạo các class: Vit (bơi, bay, chạy), Ca (bơi), Chim (bay), Ngua (chạy).
// TODO

// ⭐⭐⭐ BÀI TẬP 4: Interface.
//   abstract class CoTheThanhToan { void thanhToan(double soTien); }
//   abstract class CoTheHoanTien  { void hoanTien(double soTien); }
// Tạo: TheNganHang implements cả 2 ; TienMat chỉ implements CoTheThanhToan.
// Viết hàm muaHang(CoTheThanhToan pt, double tien) và gọi với cả 2 loại.
// TODO
