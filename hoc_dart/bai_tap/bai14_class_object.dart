// =====================================================================
// BÀI 14: LỚP (CLASS) VÀ ĐỐI TƯỢNG (OBJECT)          Cấp độ: 🏃 Tập chạy
// =====================================================================
// 📖 LÝ THUYẾT
// Class = BẢN THIẾT KẾ (ví dụ: bản vẽ chiếc xe).
// Object = SẢN PHẨM tạo ra từ bản thiết kế (chiếc xe cụ thể).
//
//   class Meo {
//     String ten;                 // thuộc tính (property)
//     int tuoi;
//     Meo(this.ten, this.tuoi);   // constructor (hàm khởi tạo)
//     void keu() => print("$ten: Meo meo!");   // phương thức (method)
//   }
//   var tom = Meo("Tom", 3);
//   tom.keu();
//
// - Constructor đặt tên:  Meo.conNho(this.ten) : tuoi = 0;
// - Thuộc tính private: đặt dấu _ ở đầu tên (_soDu) -> chỉ dùng trong file này
// - Getter / Setter:   int get soDu => _soDu;    set soDu(int v) { ... }
// - toString(): ghi đè để print(object) in ra đẹp
// - static: thuộc về CLASS, không thuộc về từng object
// =====================================================================

class Meo {
  String ten;
  int tuoi;

  Meo(this.ten, this.tuoi);
  Meo.conNho(this.ten) : tuoi = 0;

  void keu() => print("$ten: Meo meo!");

  @override
  String toString() => "Meo(ten: $ten, tuoi: $tuoi)";
}

void main() {
  // ---- VÍ DỤ MẪU ----
  var tom = Meo("Tom", 3);
  var mimi = Meo.conNho("Mimi");
  tom.keu();
  print(mimi);

  // ---- Bỏ comment để kiểm tra bài làm ----
  // var hcn = HinhChuNhat(4, 5);
  // print("Diện tích: ${hcn.dienTich()}, Chu vi: ${hcn.chuVi()}");   // 20, 18
  //
  // var sv = SinhVien("Quan", 18, 8.5);
  // print(sv);                       // SinhVien(Quan, 18 tuổi, ĐTB: 8.5 - Giỏi)
  //
  // var tk = TaiKhoan("Quan");
  // tk.napTien(500000);
  // tk.rutTien(200000);
  // tk.rutTien(999999);              // In: Không đủ tiền!
  // print(tk.soDu);                  // 300000
  //
  // var a = PhanSo(1, 2), b = PhanSo(1, 3);
  // print(a.cong(b));                // 5/6
}

// ⭐ BÀI TẬP 1: Tạo class HinhChuNhat có dai, rong và 2 method dienTich(), chuVi().
class HinhChuNhat {
  // TODO
}

// ⭐⭐ BÀI TẬP 2: Tạo class SinhVien gồm ten, tuoi, diemTB.
//   - Method xepLoai() trả về "Giỏi" / "Khá" / "Trung bình" / "Yếu"
//   - Ghi đè toString() để in như mẫu ở main
class SinhVien {
  // TODO
}

// ⭐⭐ BÀI TẬP 3: ĐÓNG GÓI (encapsulation). Class TaiKhoan:
//   - chuTaiKhoan (String), _soDu (private, bắt đầu = 0)
//   - getter soDu (chỉ đọc, bên ngoài không sửa trực tiếp được)
//   - napTien(int tien): tiền phải > 0
//   - rutTien(int tien): nếu không đủ in "Không đủ tiền!"
class TaiKhoan {
  // TODO
}

// ⭐⭐⭐ BÀI TẬP 4: Class PhanSo (tu, mau).
//   - Constructor báo lỗi nếu mau == 0 (dùng: throw ArgumentError("..."))
//   - Method cong(PhanSo khac) trả về PhanSo mới đã RÚT GỌN (dùng UCLN)
//   - toString() in dạng "tu/mau"
//   🎁 Nâng cao: dùng operator overloading để viết được  a + b
//      PhanSo operator +(PhanSo khac) => ...
class PhanSo {
  // TODO
}

// ⭐⭐⭐ BÀI TẬP 5: Thêm vào class SinhVien một biến static int soLuong
// để đếm đã tạo bao nhiêu sinh viên. Tạo 3 sinh viên rồi in SinhVien.soLuong -> 3
