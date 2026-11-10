// =====================================================================
// BÀI 08: VÒNG LẶP WHILE & DO-WHILE                  Cấp độ: 🚶 Tập đi
// =====================================================================
// 📖 LÝ THUYẾT
//   while (điều kiện) { ... }       // kiểm tra TRƯỚC rồi mới chạy
//   do { ... } while (điều kiện);   // chạy ÍT NHẤT 1 lần rồi mới kiểm tra
// Dùng while khi KHÔNG biết trước số lần lặp.
// ⚠️ Nhớ thay đổi biến trong vòng lặp, nếu không sẽ lặp vô tận!
// =====================================================================

void main() {
  // ---- VÍ DỤ MẪU ----
  int dem = 3;
  while (dem > 0) {
    print("Đếm ngược: $dem");
    dem--;
  }
  print("Phóng! 🚀");

  baiTap1(12345);
  baiTap2(12345);
  baiTap3(48, 18);
  baiTap4(29);
  baiTap5(1000000);
  baiTap6();
}

// ⭐ BÀI TẬP 1: Đếm số chữ số của n.   12345 -> 5
// Gợi ý: mỗi lần n = n ~/ 10 cho tới khi n == 0
void baiTap1(int n) {
  // TODO
}

// ⭐⭐ BÀI TẬP 2: Đảo ngược số.   12345 -> 54321
void baiTap2(int n) {
  // TODO
}

// ⭐⭐ BÀI TẬP 3: Tìm ước chung lớn nhất (UCLN) theo thuật toán Euclid.
//   Lặp: trong khi b != 0:  tam = b; b = a % b; a = tam;   -> a là UCLN
//   UCLN(48, 18) = 6
void baiTap3(int a, int b) {
  // TODO
}

// ⭐⭐ BÀI TẬP 4: Kiểm tra n có phải số nguyên tố không (chỉ chia hết cho 1 và chính nó).
//   29 -> là số nguyên tố ; 15 -> không phải
void baiTap4(int n) {
  // TODO
}

// ⭐⭐ BÀI TẬP 5: Gửi tiết kiệm 1.000.000đ, lãi 7%/năm (lãi nhập gốc).
// Hỏi sau bao nhiêu năm thì số tiền >= gấp đôi?   -> 11 năm
void baiTap5(double tienGoc) {
  // TODO
}

// ⭐⭐⭐ BÀI TẬP 6: Trò chơi đoán số (dùng do-while).
// Máy chọn số bí mật = 42. Cho sẵn danh sách lần đoán: [50, 25, 37, 42]
// Mỗi lần đoán in "Lớn quá" / "Nhỏ quá" / "Đúng rồi! Bạn đoán X lần"
//
// 🎁 Nâng cao: dùng Random để máy chọn số ngẫu nhiên, và đọc số từ bàn phím:
//   import 'dart:io';   String? s = stdin.readLineSync();
//   import 'dart:math'; int bimat = Random().nextInt(100) + 1;
void baiTap6() {
  int biMat = 42;
  List<int> cacLanDoan = [50, 25, 37, 42];
  // TODO
}
