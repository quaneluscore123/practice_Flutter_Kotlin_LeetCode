// =====================================================================
// BÀI 21: BẤT ĐỒNG BỘ - FUTURE, ASYNC/AWAIT, STREAM   Cấp độ: 🏍️ Tập xe máy
// =====================================================================
// 📖 LÝ THUYẾT
// Có những việc tốn thời gian (tải dữ liệu mạng, đọc file...). Thay vì đứng chờ,
// chương trình làm việc khác rồi quay lại khi có kết quả -> BẤT ĐỒNG BỘ.
//
// Future<T> = "lời hứa" sẽ có giá trị kiểu T trong TƯƠNG LAI.
//   Future<String> taiDuLieu() async {
//     await Future.delayed(Duration(seconds: 2));   // giả lập chờ 2 giây
//     return "Dữ liệu";
//   }
//   void main() async {
//     String kq = await taiDuLieu();    // await: đợi Future xong rồi mới chạy tiếp
//   }
//
//   Future.wait([f1, f2, f3])   chạy SONG SONG nhiều Future, đợi tất cả xong
//   try/catch dùng được với await để bắt lỗi
//
// Stream<T> = DÒNG giá trị đến dần dần theo thời gian (như băng chuyền).
//   Stream<int> demNguoc() async* {
//     for (int i = 3; i > 0; i--) {
//       await Future.delayed(Duration(seconds: 1));
//       yield i;                       // phát ra 1 giá trị
//     }
//   }
//   await for (var x in demNguoc()) print(x);
//
// 👉 Flutter dùng Future (gọi API) và Stream (realtime, Firebase) liên tục!
// =====================================================================

Future<String> taiDuLieu() async {
  await Future.delayed(Duration(seconds: 1));
  return "Dữ liệu từ server";
}

void main() async {
  // ---- VÍ DỤ MẪU ----
  print("1. Bắt đầu tải...");
  String kq = await taiDuLieu();
  print("2. $kq");
  print("3. Xong");

  await baiTap1();
  await baiTap2();
  await baiTap3();
  await baiTap4();
  await baiTap5();
}

// ⭐ BÀI TẬP 1: Viết hàm Future<int> layTuoi() chờ 2 giây rồi trả về 18.
// Gọi và in "Tuổi: 18".
// Sau đó thử BỎ chữ await -> in ra cái gì? Vì sao?
Future<void> baiTap1() async {
  // TODO
}

// ⭐⭐ BÀI TẬP 2: Viết 3 hàm giả lập:
//   layUser()      chờ 1s -> "Quan"
//   layDonHang()   chờ 2s -> 5
//   layThongBao()  chờ 1s -> 3
// a) Gọi lần lượt bằng await -> đo thời gian (khoảng 4s)
// b) Gọi song song bằng Future.wait -> đo thời gian (khoảng 2s)
// Đo thời gian: var sw = Stopwatch()..start(); ... print(sw.elapsedMilliseconds);
Future<void> baiTap2() async {
  // TODO
}

// ⭐⭐ BÀI TẬP 3: Viết hàm Future<String> dangNhap(String user, String pass):
// chờ 1s, nếu user == "admin" && pass == "123" trả về "Đăng nhập thành công",
// ngược lại throw Exception("Sai tài khoản").
// Gọi 2 lần (đúng và sai) và bắt lỗi bằng try/catch.
Future<void> baiTap3() async {
  // TODO
}

// ⭐⭐ BÀI TẬP 4: Viết Stream<int> demNguoc(int n) phát n, n-1, ..., 1 mỗi 500ms.
// Dùng await for để in ra, sau cùng in "Hết giờ! ⏰"
Future<void> baiTap4() async {
  // TODO
}

// ⭐⭐⭐ BÀI TẬP 5: Stream xử lý dữ liệu.
// Tạo stream phát các số 1..10 (Stream.fromIterable hoặc async*).
// Dùng .where() lọc số chẵn, .map() nhân 10, rồi in ra: 20 40 60 80 100
// 🎁 Nâng cao: dùng StreamController<String> để mô phỏng chat:
//   controller.stream.listen((msg) => print("Tin nhắn mới: $msg"));
//   controller.add("Xin chào"); controller.add("Bạn khoẻ không?");
//   await controller.close();    (import 'dart:async';)
Future<void> baiTap5() async {
  // TODO
}
