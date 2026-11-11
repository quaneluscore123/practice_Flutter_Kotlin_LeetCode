// =====================================================================
// BÀI 07: VÒNG LẶP FOR                               Cấp độ: 🚶 Tập đi
// =====================================================================
// 📖 LÝ THUYẾT
//   for (int i = 0; i < 5; i++) { ... }     // lặp i = 0,1,2,3,4
//   for (var x in danhSach) { ... }          // duyệt từng phần tử
//   break    -> thoát hẳn vòng lặp
//   continue -> bỏ qua lần lặp hiện tại, sang lần tiếp theo
//   join: ghép phần tử thành chuỗi và cách phần tử bằng dấu cách
// Mẹo: muốn in trên CÙNG 1 dòng, cộng dồn vào 1 chuỗi rồi print 1 lần,
//      hoặc dùng: import 'dart:io';  stdout.write("...");
// =====================================================================

void main() {
  // ---- VÍ DỤ MẪU ----
  for (int i = 1; i <= 5; i++) {
    print("Lần lặp thứ $i");
  }

  baiTap1();
  baiTap2(10);
  baiTap3(7);
  baiTap4(5);
  baiTap5(5);
  baiTap6(5);
  baiTap7();
}

// ⭐ BÀI TẬP 1: In các số chẵn từ 0 đến 20 trên một dòng: 0 2 4 6 ... 20
void baiTap1() {
  // TODO
  List<int> chuoi = [];
  for(int i = 0; i <= 20; i += 2) {
    chuoi.add(i); //add thêm phần tử vào cuối chuỗi
  }
  print(chuoi.join(' ')); 
}

// ⭐ BÀI TẬP 2: Tính tổng 1 + 2 + ... + n.   n = 10 -> 55
void baiTap2(int n) {
  // TODO
  int tong = 0;
  for(int i = 1; i <= n; i++) {
    tong += i;
  }
  print(tong);
}

// ⭐ BÀI TẬP 3: In bảng cửu chương của n.
//   7 x 1 = 7
//   7 x 2 = 14 ...  7 x 10 = 70
void baiTap3(int n) {
  // TODO
  for(int i = 1; i <= 10; i++) {
    print("${n} * ${i} = ${n*i}");
  }
}

// ⭐⭐ BÀI TẬP 4: Tính giai thừa n! = 1*2*...*n.   5! = 120
void baiTap4(int n) {
  // TODO
  int tong = 1;
  for(int i = 2; i <= n ; i++) {
    tong *= i;
  }
  print(tong);
}

// ⭐⭐ BÀI TẬP 5: In tam giác sao (vòng lặp lồng nhau), n = 5:
//   *
//   **
//   ***
//   ****
//   *****
void baiTap5(int n) {
  // TODO
  for(int i = 1; i <= n ; i++){
    List<String> chuoi = [];
    for(int j = n - i + 1; j <= n; j++) {
      chuoi.add("*");
    }
    print(chuoi.join(''));
  }
}

// ⭐⭐⭐ BÀI TẬP 6: In tam giác cân (kim tự tháp), n = 5:
//       *
//      ***
//     *****
//    *******
//   *********
// Gợi ý: dòng i có (n - i) khoảng trắng và (2*i - 1) dấu *
void baiTap6(int n) {
  // TODO
  for(int i = 1; i <= n ; i++) {
    print(' ' *(n - i) + "*" *(2*i - 1));
  }
}

// ⭐⭐⭐ BÀI TẬP 7: FizzBuzz từ 1 đến 30:
//   chia hết cho 3 và 5 -> in "FizzBuzz"
//   chỉ chia hết cho 3  -> in "Fizz"
//   chỉ chia hết cho 5  -> in "Buzz"
//   còn lại             -> in chính số đó

void baiTap7() {
  for (int i = 1; i <= 30; i++) {
    String kq = switch(true) {
      _ when i % 15 == 0 => "FizzBuzz",
      _ when i % 3 == 0 => "Fizz",
      _ when i % 5 == 0 => "Buzz",
      _ => "$i",
    };
    print(kq);
  }
}
