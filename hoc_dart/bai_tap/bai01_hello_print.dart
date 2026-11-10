// =====================================================================
// BÀI 01: HELLO WORLD & IN RA MÀN HÌNH            Cấp độ: 🍼 Tập bò
// =====================================================================
// 🎯 Mục tiêu: Biết chương trình Dart bắt đầu chạy từ đâu và in chữ ra.
//
// 📖 LÝ THUYẾT
// - Mọi chương trình Dart bắt đầu từ hàm main().
// - print("...") in một dòng ra màn hình.
// - Mỗi câu lệnh kết thúc bằng dấu chấm phẩy ;
// - // là chú thích 1 dòng, /* ... */ là chú thích nhiều dòng.
//   Máy tính bỏ qua chú thích, nó chỉ dành cho người đọc.
//
// ▶️ Cách chạy:  dart run hoc_dart/bai_tap/bai01_hello_print.dart
// =====================================================================

void main() {
  // ---- VÍ DỤ MẪU (đọc và chạy thử) ----
  print("Xin chào Dart!");

  baiTap1();
  baiTap2();
  baiTap3();
  baiTap4();
}

// ⭐ BÀI TẬP 1: In ra dòng chữ:  Tôi đang học Dart
void baiTap1() {
  // TODO: viết code ở đây
  print("Tôi đang học Dart");
}

// ⭐ BÀI TẬP 2: In ra tên của bạn và năm sinh trên 2 dòng khác nhau.
// Kết quả mong đợi (ví dụ):
//   Quan
//   2007
void baiTap2() {
  // TODO
  print("Quan");
  print(2007);
}

// ⭐ BÀI TẬP 3: In ra hình tam giác bằng dấu * như sau:
//   *
//   **
//   ***
//   ****
void baiTap3() {
  // TODO (chỉ dùng print, chưa cần vòng lặp)
  print("*");
  print("**");
  print("***");
  print("****");
}

// ⭐⭐ BÀI TẬP 4: Dùng ký tự \n (xuống dòng) để in 3 dòng chỉ với 1 lệnh print:
//   Dòng 1
//   Dòng 2
//   Dòng 3
// Gợi ý: print("A\nB") sẽ in A rồi xuống dòng in B.
void baiTap4() {
  // TODO
  print("Dòng 1\nDòng 2 \nDòng 3");
}
