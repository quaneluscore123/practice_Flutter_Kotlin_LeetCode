// =====================================================================
// BÀI 19: GENERICS (KIỂU TỔNG QUÁT)                  Cấp độ: 🚴 Tập xe đạp
// =====================================================================
// 📖 LÝ THUYẾT
// Generics giúp viết code 1 lần, dùng cho NHIỀU kiểu dữ liệu.
// Bạn đã dùng rồi đấy: List<int>, Map<String, int> chính là generics!
//
//   class Hop<T> {                       // T = "kiểu gì đó", quyết định khi dùng
//     T giaTri;
//     Hop(this.giaTri);
//   }
//   var h1 = Hop<int>(5);
//   var h2 = Hop<String>("hi");
//
//   T layDauTien<T>(List<T> ds) => ds.first;     // hàm generic
//
//   class KhoSo<T extends num> { }   // giới hạn: T phải là số (int/double)
// =====================================================================

class Hop<T> {
  T giaTri;
  Hop(this.giaTri);
  @override
  String toString() => "Hop<$T>($giaTri)";
}

void main() {
  // ---- VÍ DỤ MẪU ----
  print(Hop<int>(5));
  print(Hop<String>("Xin chào"));

  // ---- Bỏ comment để kiểm tra ----
  // print(hoanDoi(1, "a"));                      // (a, 1)
  // var ngan = NganXep<int>();
  // ngan.day(1); ngan.day(2); ngan.day(3);
  // print(ngan.lay());                           // 3
  // print(ngan.xem());                           // 2
  // print(tongList([1.5, 2.5, 3]));              // 7.0
  // var cache = BoNhoDem<String, int>();
  // cache.luu("a", 1);
  // print(cache.doc("a"));   // 1
  // print(cache.doc("b"));   // null
}

// ⭐ BÀI TẬP 1: Viết hàm generic hoanDoi<A, B>(A a, B b) trả về record (B, A).
// TODO

// ⭐⭐ BÀI TẬP 2: Viết class NganXep<T> (Stack - vào sau ra trước) với:
//   day(T x)     thêm lên đỉnh
//   T? lay()     lấy ra phần tử trên đỉnh (null nếu rỗng)
//   T? xem()     xem phần tử trên đỉnh (không lấy ra)
//   bool get rong
// Gợi ý: bên trong dùng 1 List<T> _ds = [];
// TODO

// ⭐⭐ BÀI TẬP 3: Viết hàm tongList<T extends num>(List<T> ds) trả về double.
// TODO

// ⭐⭐⭐ BÀI TẬP 4: Viết class BoNhoDem<K, V> có luu(K key, V value), V? doc(K key),
// và xoa(K key). Thêm giới hạn tối đa 3 phần tử: lưu cái thứ 4 thì xoá cái cũ nhất.
// TODO
