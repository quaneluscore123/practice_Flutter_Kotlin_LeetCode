// =====================================================================
// BÀI 15: KẾ THỪA (INHERITANCE) & ĐA HÌNH            Cấp độ: 🏃 Tập chạy
// =====================================================================
// 📖 LÝ THUYẾT
// Kế thừa: class con "thừa hưởng" thuộc tính và method của class cha.
//   class DongVat {
//     String ten;
//     DongVat(this.ten);
//     void keu() => print("...");
//   }
//   class Cho extends DongVat {
//     Cho(super.ten);                          // gọi constructor của cha
//     @override
//     void keu() => print("$ten: Gâu gâu");    // GHI ĐÈ method của cha
//   }
//
// - super.xxx() : gọi method của class cha
// - Đa hình: List<DongVat> ds = [Cho("Ki"), Meo("Tom")];
//            for (var d in ds) d.keu();   // mỗi con kêu theo cách riêng
// - is  : kiểm tra kiểu  (if (d is Cho) ...)
// - as  : ép kiểu        (d as Cho)
// =====================================================================

class DongVat {
  String ten;
  DongVat(this.ten);
  void keu() => print("$ten: ...");
}

class Cho extends DongVat {
  Cho(super.ten);
  @override
  void keu() => print("$ten: Gâu gâu!");
  void vayDuoi() => print("$ten vẫy đuôi");
}

void main() {
  // ---- VÍ DỤ MẪU ----
  List<DongVat> ds = [Cho("Ki"), DongVat("Con gì đó")];
  for (var d in ds) {
    d.keu();
    if (d is Cho) d.vayDuoi();
  }

  // ---- Bỏ comment để kiểm tra ----
  // List<NhanVien> congTy = [
  //   NhanVien("An", 10000000),
  //   QuanLy("Bình", 15000000, 5000000),
  //   ThucTapSinh("Chi"),
  // ];
  // for (var nv in congTy) {
  //   print("${nv.ten}: ${nv.tinhLuong()}đ");
  // }
  // An: 10000000đ | Bình: 20000000đ | Chi: 3000000đ
}

// ⭐ BÀI TẬP 1: Tạo class Meo và Ga kế thừa DongVat, ghi đè keu().
//   Meo: "Meo meo"   Ga: "Ò ó o"
// Tạo 1 list gồm Cho, Meo, Ga rồi cho tất cả cùng kêu.
// TODO

// ⭐⭐ BÀI TẬP 2: Hệ thống tính lương.
//   NhanVien(ten, luongCoBan)        tinhLuong() = luongCoBan
//   QuanLy extends NhanVien + phuCap tinhLuong() = luongCoBan + phuCap
//   ThucTapSinh extends NhanVien     luongCoBan cố định 3.000.000
//                                    -> ThucTapSinh(String ten) : super(ten, 3000000);
// TODO

// ⭐⭐ BÀI TẬP 3: Thêm method moTa() vào NhanVien in "Nhân viên: <ten>".
// Ở QuanLy ghi đè moTa(): gọi super.moTa() trước, rồi in thêm "(Quản lý)".

// ⭐⭐⭐ BÀI TẬP 4: Viết hàm tongLuong(List<NhanVien> ds) trả về tổng lương cả công ty,
// và hàm demQuanLy(List<NhanVien> ds) đếm số quản lý (dùng is).
