// =====================================================================
// BÀI 05: CÂU ĐIỀU KIỆN IF / ELSE                    Cấp độ: 🚶 Tập đi
// =====================================================================
// 📖 LÝ THUYẾT
//   if (điều kiện) {
//     // chạy khi điều kiện đúng
//   } else if (điều kiện khác) {
//     // ...
//   } else {
//     // chạy khi tất cả đều sai
//   }
//
// Toán tử 3 ngôi (viết gọn):   var kq = dieuKien ? giaTriNeuDung : giaTriNeuSai;
// =====================================================================

void main() {
  // ---- VÍ DỤ MẪU (giống vdu1.dart của bạn) ----
  int tuoi = 18;
  if (tuoi >= 18) {
    print("Người lớn");
  } else {
    print("Trẻ em");
  }
  String loai = tuoi % 2 == 0 ? "chẵn" : "lẻ";
  print("Tuổi $tuoi là số $loai");

  baiTap1(-5);
  baiTap2(8.5);
  baiTap3(2024);
  baiTap4(3, 9, 6);
  baiTap5(250);
}

// ⭐ BÀI TẬP 1: Cho số n. In ra "Số dương", "Số âm" hoặc "Số không".
void baiTap1(int n) {
  // TODO
  if(n > 0) {
    print("Số dương");
  } else if (n == 0) {
    print("Số không");
  } else {
    print("Số âm");
  }
}

// ⭐ BÀI TẬP 2: Xếp loại học lực theo điểm:
//   >= 9: Xuất sắc | >= 8: Giỏi | >= 6.5: Khá | >= 5: Trung bình | còn lại: Yếu
//   Điểm không hợp lệ (< 0 hoặc > 10): in "Điểm không hợp lệ"
void baiTap2(double diem) {
  // TODO
  if(diem >= 9 && diem <= 10) {
    print("Xuất sắc");
  } else if(diem >= 8 && diem < 9) {
    print("Giỏi");
  } else if(diem >= 6.5 && diem < 8) {
    print("Khá");
  } else if(diem >= 5 && diem < 6.5) {
    print("Trung bình");
  } else if(diem >= 0 && diem < 5) {
    print("Yếu");
  } else {
    print("Không hợp lệ");
  }
}

// ⭐⭐ BÀI TẬP 3: Kiểm tra năm nhuận.
// Năm nhuận: chia hết cho 400, HOẶC (chia hết cho 4 VÀ không chia hết cho 100)
// 2024 -> nhuận, 1900 -> không nhuận, 2000 -> nhuận
void baiTap3(int nam) {
  // TODO
  var namNhuan = nam % 400 == 0 || (nam % 4 == 0 && nam % 100 != 0) ? "Nhuận" : "Không nhuận";
  print(namNhuan);
}

// ⭐⭐ BÀI TẬP 4: Tìm số lớn nhất trong 3 số a, b, c (không dùng hàm max).
// Kết quả với (3, 9, 6): Số lớn nhất là 9
void baiTap4(int a, int b, int c) {
  // TODO
  if(a >= b && a >= c) {
    print(a);
  } else if(b >= a && b >= c) {
    print(b);
  } else if(c >= a && c >= b) {
    print(c);
  } else {
    print("Không hợp lệ");
  }
}

// ⭐⭐⭐ BÀI TẬP 5: Tính tiền điện theo bậc thang:
//   50 số đầu      : 1800đ/số
//   51 - 100       : 2000đ/số
//   101 - 200      : 2500đ/số
//   trên 200       : 3000đ/số
// Ví dụ 250 số: 50*1800 + 50*2000 + 100*2500 + 50*3000 = 590000đ
void baiTap5(int soDien) {
  // TODO
  int tienDien = 0;
  if(soDien > 200) {
    tienDien =  50*1800 + 50*2000 + 100*2500 + (soDien - 200)*3000;
  } else if(soDien > 100 && soDien <= 200) {
    tienDien = 50*1800 + 50*2000 + (soDien - 100)*2500;
  } else if(soDien >= 51 && soDien <= 100) {
    tienDien = 50*1800 + (soDien - 50)*2000;
  } else if(soDien >= 0 && soDien <= 50){
    tienDien = soDien*1800;
  } else {
    print("Không hợp lệ");
  }
  print(tienDien);
}
