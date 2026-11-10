# 🎯 Lộ trình học Kotlin: từ con số 0 đến sẵn sàng học Android

## Cách chạy
**Cách 1, IntelliJ IDEA (khuyên dùng):**
1. `File → New → Project → Kotlin` (Build system: Gradle)
2. Copy các file `.kt` vào `src/main/kotlin/`
3. Mở file, bấm nút ▶️ xanh cạnh `fun main()`

Mỗi file có `package baiXX` riêng nên các hàm `baiTap1()` không bị trùng tên.

**Cách 2, dòng lệnh:** cài compiler `winget install JetBrains.Kotlin.Compiler`, rồi chạy:
```
kotlinc Bai01_HelloWorld.kt -include-runtime -d bai01.jar
java -jar bai01.jar
```

## Cách học mỗi bài
Đọc 📖 lý thuyết → chạy ví dụ mẫu → làm các `// TODO` theo ⭐ → ⭐⭐ → ⭐⭐⭐ → so với kết quả mong đợi.
Phần **🔁 So với Dart** giúp bạn học song song cả 2 ngôn ngữ.

## Các giai đoạn

| Giai đoạn | Bài | Chủ đề |
|---|---|---|
| 🍼 Tập bò | 01 | Hello World, println |
| | 02 | val / var, kiểu dữ liệu |
| | 03 | Toán tử, range `in` |
| | 04 | Chuỗi (String) |
| 🚶 Tập đi | 05 | if là biểu thức |
| | 06 | when |
| | 07 | for, range, step, downTo |
| | 08 | while / do-while, readln |
| | 09 | Hàm: tham số mặc định, đặt tên, vararg, đệ quy |
| 🏃 Tập chạy | 10 | Array & List (mutable / immutable) |
| | 11 | Set & Map |
| | 12 | Null safety: `?.`, `?:`, `let` |
| | 13 | Lambda & xử lý collection |
| | 14 | Class, constructor, getter/setter |
| | 15 | Kế thừa (`open`, `override`) |
| 🚴 Tập xe đạp | 16 | Abstract class & Interface |
| | 17 | data class, enum, sealed |
| | 18 | object, companion, scope functions (let/apply/also/run/with) |
| | 19 | Extension, infix, operator overloading |
| | 20 | Exception, require, runCatching |
| 🏍️ Tập xe máy | 21 | Generics |
| | 22 | Coroutines & Flow *(cần thêm thư viện)* |
| 🚗 Lái ô tô | 23 | Dự án tổng hợp: Quản lý thư viện |

> 💡 Khuyên học: làm xong bài N bên Dart thì làm bài cùng chủ đề bên Kotlin để thấy 2 ngôn ngữ giống và khác nhau ở đâu.
