// =====================================================================
// BÀI 18: XỬ LÝ LỖI (EXCEPTION)                      Cấp độ: 🚴 Tập xe đạp
// =====================================================================
// 📖 LÝ THUYẾT
//   try {
//     // code có thể gây lỗi
//   } on FormatException catch (e) {
//     // bắt riêng loại lỗi FormatException
//   } catch (e) {
//     // bắt mọi lỗi còn lại
//   } finally {
//     // LUÔN chạy dù có lỗi hay không
//   }
//
//   throw Exception("Có lỗi!");        // tự ném lỗi
//
// Tự tạo loại lỗi riêng:
//   class SoDuKhongDuException implements Exception {
//     final String message;
//     SoDuKhongDuException(this.message);
//     @override
//     String toString() => "SoDuKhongDuException: $message";
//   }
// =====================================================================

void main() {
  // ---- VÍ DỤ MẪU ----
  try {
    int so = int.parse("abc");
    print(so);
  } on FormatException catch (e) {
    print("Không phải số: ${e.message}");
  } finally {
    print("Xong!");
  }

  baiTap1("10", "0");
  baiTap1("10", "x");
  baiTap1("10", "4");
  baiTap2();
  baiTap3();
}

// ⭐ BÀI TẬP 1: Viết hàm chia 2 chuỗi số.
//   - Chuỗi không phải số -> in "Dữ liệu không hợp lệ"
//   - Chia cho 0          -> in "Không thể chia cho 0"  (tự throw nếu b == 0)
//   - Thành công          -> in kết quả.   ("10", "4") -> 2.5
void baiTap1(String a, String b) {
  // TODO
}

// ⭐⭐ BÀI TẬP 2: Truy cập list ngoài phạm vi:
//   var ds = [1, 2, 3]; print(ds[10]);
// Bắt lỗi RangeError và in "Vị trí không tồn tại".
void baiTap2() {
  // TODO
}

// ⭐⭐⭐ BÀI TẬP 3: Tự tạo exception.
//   class TuoiKhongHopLeException implements Exception { ... }
// Viết hàm datTuoi(int tuoi): nếu tuoi < 0 hoặc > 150 thì throw lỗi đó.
// Gọi thử với 20, -5, 200 trong try-catch và in thông báo.
void baiTap3() {
  // TODO
}
