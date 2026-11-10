// =====================================================================
// BÀI 03: TOÁN TỬ                                    Cấp độ: 🍼 Tập bò
// =====================================================================
// 📖 LÝ THUYẾT
// Số học :  +  -  *  /  (chia ra double)   ~/ (chia lấy nguyên)   % (chia lấy dư)
// So sánh:  ==  !=  >  <  >=  <=           -> kết quả là bool
// Logic  :  && (VÀ)   || (HOẶC)   ! (PHỦ ĐỊNH)
// Gán    :  =  +=  -=  *=  ++  --
//   Ví dụ: 7 / 2 = 3.5 ;  7 ~/ 2 = 3 ;  7 % 2 = 1
// =====================================================================

void main() {
  // ---- VÍ DỤ MẪU ----
  int a = 7, b = 2;
  print("$a / $b = ${a / b}");
  print("$a ~/ $b = ${a ~/ b}");
  print("$a % $b = ${a % b}");
  print("a > b ? ${a > b}");

  baiTap1();
  baiTap2();
  baiTap3();
  baiTap4();
  baiTap5();
  thuThach();
}

// ⭐ BÀI TẬP 1: Với x = 15, y = 4, in ra kết quả của: + - * / ~/ %
// Kết quả: 19, 11, 60, 3.75, 3, 3
void baiTap1() {
  int x = 15, y = 4;
  // TODO
  print("$x + $y = ${x+y}");
  print("$x - $y = ${x-y}");
  print("$x * $y = ${x*y}");
  print("$x / $y = ${x/y}");
  print("$x ~/ $y = ${x~/y}");
  print("$x % $y = ${x%y}");
}

// ⭐ BÀI TẬP 2: Tính diện tích và chu vi hình chữ nhật dài 8, rộng 5.
// Kết quả: Diện tích = 40, Chu vi = 26
void baiTap2() {
  // TODO
  int x = 8, y = 5;
  print("Diện tích = ${x * y}");
  print("Chu vi = ${(x + y)*2}");
}

// ⭐ BÀI TẬP 3: Cho diem = 7. Lần lượt: cộng thêm 2 (dùng +=), tăng 1 (dùng ++),
// nhân đôi (dùng *=). In ra sau mỗi bước.   Kết quả: 9 -> 10 -> 20
void baiTap3() {
  int diem = 7;
  // TODO
  print("Cộng thêm 2: ${diem += 2}");
  print("Tăng 1: ${++diem}");
  print("Nhân đôi: ${diem *= 2}");
}

// ⭐⭐ BÀI TẬP 4: Đổi 3725 giây thành giờ:phút:giây
// Kết quả: 1 giờ 2 phút 5 giây
// Gợi ý: dùng ~/ và %
void baiTap4() {
  int tongGiay = 3725;
  // TODO
  int giay = tongGiay % 60;
  int tongPhut = tongGiay ~/ 60 % 60;
  int tongGio = tongGiay ~/ (60*60);
  print("${tongGio} giờ ${tongPhut} phút ${giay} giây");
}

// ⭐⭐ BÀI TẬP 5: Kiểm tra (in true/false):
//   - Số n = 14 có phải số chẵn không?                   -> true
//   - n có nằm trong khoảng [10, 20] không?              -> true
//   - n có chia hết cho 3 HOẶC cho 7 không?               -> true
//   - n KHÔNG lớn hơn 100?                                -> true
void baiTap5() {
  int n = 14;
  // TODO
  bool chanLe = (n % 2 == 0);
  print(chanLe);
  bool khoangCach = (n >= 10 && n <= 20);
  print(khoangCach);
  bool chiaHet = ((n % 3 == 0) || (n%7==0));
  print(chiaHet);
  bool lonHon = (n <= 100);
  print(lonHon);
}

// ⭐⭐⭐ THỬ THÁCH: Cho số có 3 chữ số so = 739.
// Tách ra chữ số hàng trăm, chục, đơn vị và tính tổng các chữ số.
// Kết quả: Trăm=7, Chục=3, Đơn vị=9, Tổng=19
// (Tự gọi hàm thuThach() trong main nhé)
void thuThach() {
  int so = 739;
  // TODO
  int hangDonVi = so % 10;
  int hangChuc = so ~/ 10 % 10;
  int hangTram = so ~/ 100;
  print(hangDonVi + hangChuc + hangTram);
}
