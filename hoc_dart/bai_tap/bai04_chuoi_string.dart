// =====================================================================
// BÀI 04: CHUỖI (STRING)                             Cấp độ: 🍼 Tập bò
// =====================================================================
// 📖 LÝ THUYẾT - các thao tác hay dùng
//   s.length                 độ dài
//   s.toUpperCase()          VIẾT HOA        s.toLowerCase()  viết thường
//   s.trim()                 bỏ khoảng trắng 2 đầu
//   s.contains("abc")        có chứa không?
//   s.startsWith / endsWith  bắt đầu / kết thúc bằng?
//   s.substring(a, b)        cắt chuỗi từ vị trí a đến TRƯỚC vị trí b(b để trống thì lấy đến vị trí cuối)
//   s.indexOf("x")           vị trí xuất hiện đầu tiên (-1 nếu không có)
//   s.replaceAll("a", "b")   thay thế
//   s.split(" ")             tách thành danh sách (các từ bởi vì " " là điều kiện tách ra) 
//   s[0]                     ký tự đầu tiên (vị trí bắt đầu từ 0)
//   s * 3                    lặp chuỗi 3 lần
//   s.padLeft(5, '0')        thêm ký tự bên trái cho đủ độ dài: "7" -> "00007"
//   """ ... """              chuỗi nhiều dòng
// =====================================================================

void main() {
  // ---- VÍ DỤ MẪU ----
  String s = "  Hoc Dart Rat Vui  ";
  print("[${s.trim()}] dài ${s.trim().length} ký tự");
  print(s.trim().toUpperCase());
  print(s.contains("Dart"));
  print("-" * 20);

  baiTap1();
  baiTap2();
  baiTap3();
  baiTap4();
  baiTap5();
}

// ⭐ BÀI TẬP 1: Với ten = "nguyen van quan", in ra:
//   - Độ dài chuỗi                -> 15
//   - Viết hoa toàn bộ            -> NGUYEN VAN QUAN
//   - Ký tự đầu tiên và cuối cùng -> n, n
void baiTap1() {
  String ten = "nguyen van quan";
  // TODO
  print("${ten.trim().length}");
  print(ten.toUpperCase());
  print("${ten[0]}, ${ten[ten.length - 1]}");
}

// ⭐ BÀI TẬP 2: Với email = "quan@gmail.com"
//   - Kiểm tra có chứa "@" không          -> true
//   - Lấy phần tên trước @                -> quan
//   - Lấy tên miền sau @                  -> gmail.com
// Gợi ý: indexOf + substring
void baiTap2() {
  String email = "quan@gmail.com";
  // TODO
  print("${email.contains("@")}");
  print("${email.substring(0, email.indexOf("@"))}");
  print("${email.substring(email.indexOf("@") + 1)}");
}

// ⭐⭐ BÀI TẬP 3: Đếm số từ trong câu "Toi yeu lap trinh Dart"  -> 5
void baiTap3() {
  // TODO
  String chuoi = "Toi yeu lap trinh Dart";
  List<String> n = chuoi.split(" ");
  print(n.length);
}

// ⭐⭐ BÀI TẬP 4: Viết hoa chữ cái đầu: "dart" -> "Dart"
void baiTap4() {
  String tu = "dart";
  // TODO
  String vietHoa = tu[0].toUpperCase();
  print("${vietHoa}${tu.substring(1)}");
}

// ⭐⭐⭐ BÀI TẬP 5: Đảo ngược chuỗi "hello" -> "olleh"
// Gợi ý: s.split('') tách từng ký tự, .reversed đảo, .join('') ghép lại
// (Hoặc quay lại làm bằng vòng lặp sau khi học bài 07)
void baiTap5() {
  // TODO
  String chuoi = "hello";
  print("${chuoi.split("").reversed.join("")}");
}
