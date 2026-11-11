// =====================================================================
// BÀI 06: SWITCH CASE & SWITCH EXPRESSION             Cấp độ: 🚶 Tập đi
// =====================================================================
// 📖 LÝ THUYẾT
// Khi có nhiều trường hợp cố định, switch gọn hơn if-else.
//
// Cách 1 - switch câu lệnh:
//   switch (thu) {
//     case 1:
//       print("Chủ nhật");
//     case 2 || 3:                 // nhiều giá trị
//       print("Đầu tuần");
//     default:
//       print("Khác");
//   }
//
// Cách 2 - switch biểu thức (Dart 3, trả về giá trị):
//   String ten = switch (thu) {
//     1 => "Chủ nhật",
//     2 => "Thứ hai",
//     >= 3 && <= 7 => "Ngày thường",    // pattern so sánh
//     _ => "Không hợp lệ",              // _ nghĩa là "mọi trường hợp còn lại"
//   };
// =====================================================================

void main() {
  // ---- VÍ DỤ MẪU ----
  String mau = "do";
  switch (mau) {
    case "do":
      print("Dừng lại");
    case "vang":
      print("Chậm lại");
    case "xanh":
      print("Đi");
    default:
      print("Đèn hỏng");
  }

  baiTap1(3);
  baiTap2('*', 6, 3);
  baiTap3(2);
  baiTap4(7.5);
}

// ⭐ BÀI TẬP 1: Dùng switch câu lệnh: nhập số thứ (2..8) in ra tên thứ.
// 2 -> Thứ Hai ... 7 -> Thứ Bảy, 8 -> Chủ Nhật, khác -> Không hợp lệ
void baiTap1(int thu) {
  // TODO
  switch(thu) {
    case 2:
      print("Thứ 2");
    case 3:
      print("Thứ 3");
    case 4:
      print("Thứ 4");
    case 5:
      print("Thứ 5");
    case 6:
      print("Thứ 6");
    case 7:
      print("Thứ 7");
    case 8:
      print("Chủ nhật");
    default:
      print("Không hợp lệ");
  }
}

// ⭐⭐ BÀI TẬP 2: Máy tính mini. Dùng switch BIỂU THỨC để tính a (pheptinh) b
// '+', '-', '*', '/' ; phép khác thì trả về null.
// Kết quả với ('*', 6, 3): 6 * 3 = 18
void baiTap2(String pheptinh, num a, num b) {
  // TODO: num? kq = switch (pheptinh) { ... };
  var kq = switch(pheptinh) {
    "*" => a * b,
    "+" => a + b,
    "-" => a - b,
    "/" => a / b,
    _ => "Không hợp lệ",
  };
  print(kq);
}

// ⭐⭐ BÀI TẬP 3: Cho số tháng, in ra số ngày trong tháng (năm không nhuận).
// Gộp các tháng giống nhau:  1 || 3 || 5 ... => 31
void baiTap3(int thang) {
  // TODO
  num? kq = switch(thang) {
    1 || 3 || 5 || 7 || 8 || 10 || 12 => 31,
    4 || 6 || 9 || 11 => 30,
    2 => 28,
    _ => null,
  };
  print(kq);
}

// ⭐⭐⭐ BÀI TẬP 4: Làm lại bài xếp loại học lực (bài 05) bằng switch biểu thức
// với pattern so sánh:  >= 9 => "Xuất sắc", ...
void baiTap4(double diem) {
  // TODO
  var hocLuc = switch(diem) {
    >= 9 && <= 10 => "Xuất sắc",
    >= 8 && < 9 => "Giỏi",
    >= 7 && < 8 => "Khá",
    >= 5 && < 7 => "Trung bình",
    >= 0 && < 4 => "Yếu",
    _ => "Không hợp lệ",
  };
  print(hocLuc);
}
