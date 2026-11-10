// =====================================================================
// BÀI 17: ENUM, RECORD, PATTERN, SEALED (Dart 3)     Cấp độ: 🚴 Tập xe đạp
// =====================================================================
// 📖 LÝ THUYẾT
// 1) enum: tập hợp các giá trị CỐ ĐỊNH.
//      enum Mua { xuan, ha, thu, dong }
//      Mua.ha.name -> "ha"    Mua.values -> tất cả
//    Enum nâng cao (có thuộc tính):
//      enum Size {
//        s(40), m(50), l(60);
//        final int canNang;
//        const Size(this.canNang);
//      }
//
// 2) Record: gói nhiều giá trị lại không cần tạo class.
//      (int, String) a = (1, "Quan");          a.$1, a.$2
//      ({int x, int y}) diem = (x: 3, y: 4);   diem.x
//    -> rất tiện để HÀM TRẢ VỀ NHIỀU GIÁ TRỊ.
//
// 3) Destructuring (bóc tách):  var (ten, tuoi) = ("Quan", 18);
//
// 4) sealed class: class cha "đóng kín", switch phải xử lý ĐỦ mọi class con
//    (thiếu là Dart báo lỗi ngay -> rất an toàn).
//      sealed class KetQua {}
//      class ThanhCong extends KetQua { final String data; ThanhCong(this.data); }
//      class ThatBai   extends KetQua { final String loi;  ThatBai(this.loi); }
//      String moTa(KetQua k) => switch (k) {
//        ThanhCong(data: var d) => "OK: $d",
//        ThatBai(loi: var l)    => "Lỗi: $l",
//      };
// =====================================================================

enum Mua { xuan, ha, thu, dong }

(int, int) chiaCoDu(int a, int b) => (a ~/ b, a % b);

void main() {
  // ---- VÍ DỤ MẪU ----
  for (var m in Mua.values) {
    print("${m.index}: ${m.name}");
  }
  var (thuong, du) = chiaCoDu(17, 5);
  print("17 / 5 = $thuong dư $du");

  baiTap1(Mua.thu);
  baiTap2();
  baiTap3();
  baiTap4();
}

// ⭐ BÀI TẬP 1: Dùng switch biểu thức trả về mô tả cho mỗi mùa:
//   xuan -> "Hoa nở 🌸", ha -> "Nắng nóng ☀️", thu -> "Lá rụng 🍂", dong -> "Lạnh ❄️"
void baiTap1(Mua mua) {
  // TODO
}

// ⭐⭐ BÀI TẬP 2: Tạo enum DenGiaoThong có thuộc tính thoiGian (giây):
//   xanh(30), vang(3), do(25)  và method  DenGiaoThong tiepTheo()
//   xanh -> vang -> do -> xanh.   In ra 1 chu kỳ đèn.
void baiTap2() {
  // TODO
}

// ⭐⭐ BÀI TẬP 3: Viết hàm thongKe(List<int> ds) trả về record
//   ({int min, int max, double tb})
// rồi bóc tách:  var (:min, :max, :tb) = thongKe([4, 8, 1, 9]);
//   -> min=1, max=9, tb=5.5
void baiTap3() {
  // TODO
}

// ⭐⭐⭐ BÀI TẬP 4: sealed class.
// Tạo sealed class PhuongTien với 3 class con:
//   XeDap(), XeMay(int dungTich), OTo(int soCho)
// Viết hàm tinhPhiGuiXe(PhuongTien p) dùng switch:
//   XeDap: 2000đ | XeMay: 5000đ (dungTich > 150 thì 10000đ) | OTo: 30000đ
// Thử xoá 1 trường hợp trong switch -> xem Dart báo lỗi gì.
void baiTap4() {
  // TODO
}
