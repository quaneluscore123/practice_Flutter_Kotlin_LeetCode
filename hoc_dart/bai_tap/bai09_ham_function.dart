// =====================================================================
// BÀI 09: HÀM (FUNCTION)                             Cấp độ: 🚶 Tập đi
// =====================================================================
// 📖 LÝ THUYẾT
// Hàm = một đoạn code có tên, gọi lại được nhiều lần.
//
//   int cong(int a, int b) {            // kiểu trả về - tên - tham số
//     return a + b;
//   }
//   int nhan(int a, int b) => a * b;    // hàm mũi tên (1 dòng)
//
// Tham số TUỲ CHỌN theo vị trí  [ ] :  void chao(String ten, [String? loiChao])
// Tham số ĐẶT TÊN               { } :  void taoUser({required String ten, int tuoi = 18})
//                                      gọi: taoUser(ten: "Quan", tuoi: 20)
// Hàm không trả về gì dùng kiểu void.
// =====================================================================

void main() {
  // ---- VÍ DỤ MẪU ----
  print(cong(3, 4));
  print(nhan(3, 4));
  chao("Quan");
  chao("Quan", "Chào buổi sáng");

  // ---- Gọi thử các bài tập (bỏ comment khi làm xong) ----
  // print(binhPhuong(5));                 // 25
  // print(laSoChan(7));                   // false
  // print(timMax(3, 8));                  // 8
  // print(tinhBMI(65, 1.7));              // 22.49...
  // gioiThieu(ten: "Quan", tuoi: 18);     // Tôi là Quan, 18 tuổi, đến từ Việt Nam
  // gioiThieu(ten: "Lan", tuoi: 20, queQuan: "Huế");
  // print(laSoNguyenTo(17));              // true
  // print(cacSoNguyenTo(30));             // [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
  // print(fibonacci(10));                 // 55
}

int cong(int a, int b) {
  return a + b;
}

int nhan(int a, int b) => a * b;

void chao(String ten, [String? loiChao]) {
  print("${loiChao ?? 'Xin chào'}, $ten!");
}

// ⭐ BÀI TẬP 1: Viết hàm trả về bình phương của n (dùng hàm mũi tên =>)
int binhPhuong(int n) {
  return 0; // TODO: sửa lại
}

// ⭐ BÀI TẬP 2: Hàm kiểm tra số chẵn
bool laSoChan(int n) {
  return false; // TODO
}

// ⭐ BÀI TẬP 3: Hàm trả về số lớn hơn trong 2 số
int timMax(int a, int b) {
  return 0; // TODO
}

// ⭐⭐ BÀI TẬP 4: Tính BMI = canNang / (chieuCao * chieuCao)
double tinhBMI(double canNang, double chieuCao) {
  return 0; // TODO
}

// ⭐⭐ BÀI TẬP 5: Hàm có tham số đặt tên. queQuan mặc định là "Việt Nam".
// Viết lại chữ ký hàm: void gioiThieu({required String ten, required int tuoi, String queQuan = "Việt Nam"})
void gioiThieu() {
  // TODO
}

// ⭐⭐ BÀI TẬP 6: Hàm kiểm tra số nguyên tố (dùng lại kiến thức bài 08)
bool laSoNguyenTo(int n) {
  return false; // TODO
}

// ⭐⭐⭐ BÀI TẬP 7: Dùng hàm laSoNguyenTo ở trên để trả về list các số nguyên tố <= n
List<int> cacSoNguyenTo(int n) {
  return []; // TODO
}

// ⭐⭐⭐ BÀI TẬP 8: ĐỆ QUY - hàm tự gọi chính nó.
// Fibonacci: F(0)=0, F(1)=1, F(n) = F(n-1) + F(n-2).   F(10) = 55
// Gợi ý: luôn có "điểm dừng" (n <= 1) để không gọi vô tận.
int fibonacci(int n) {
  return 0; // TODO
}
