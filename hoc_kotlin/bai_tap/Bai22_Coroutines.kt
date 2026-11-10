package bai22

// =====================================================================
// BÀI 22: COROUTINES (BẤT ĐỒNG BỘ)                   Cấp độ: 🏍️ Tập xe máy
// =====================================================================
// ⚠️ CẦN THƯ VIỆN: kotlinx-coroutines-core.
//   Trong IntelliJ (Gradle), thêm vào build.gradle.kts:
//     dependencies {
//         implementation("org.jetbrains.kotlinx:kotlinx-coroutines-core:1.8.1")
//     }
//   Sau đó BỎ COMMENT các dòng import và code bên dưới.
//
// 📖 LÝ THUYẾT
// Coroutine ≈ async/await của Dart: làm việc tốn thời gian mà không "đơ" chương trình.
//
//   suspend fun taiDuLieu(): String {     // suspend ≈ async của Dart
//       delay(1000)                       // chờ 1s mà không chặn luồng
//       return "Dữ liệu"
//   }
//   fun main() = runBlocking {            // tạo "vùng" chạy coroutine
//       val kq = taiDuLieu()              // gọi bình thường, không cần await!
//   }
//
//   launch { ... }                  chạy song song, không trả kết quả (Job)
//   val d = async { ... }; d.await()  chạy song song, có kết quả (≈ Future)
//   Flow<T>  ≈ Stream của Dart:  flow { emit(1) }.collect { println(it) }
//
// 🔁 Dart  Future/async/await  →  Kotlin  suspend/async/await
//    Dart  Stream/async*/yield  →  Kotlin  Flow/flow{}/emit
// =====================================================================

// import kotlinx.coroutines.*
// import kotlinx.coroutines.flow.*
// import kotlin.system.measureTimeMillis

fun main() {
    println("Hãy cài thư viện coroutines rồi bỏ comment phần bên dưới nhé!")
}

// fun main() = runBlocking {
//     // ---- VÍ DỤ MẪU ----
//     println("1. Bắt đầu")
//     val kq = taiDuLieu()
//     println("2. $kq")
//
//     baiTap1()
//     baiTap2()
//     baiTap3()
//     baiTap4()
//     baiTap5()
// }
//
// suspend fun taiDuLieu(): String {
//     delay(1000)
//     return "Dữ liệu từ server"
// }
//
// // ⭐ BÀI TẬP 1: suspend fun layTuoi(): Int  chờ 2s rồi trả 18. Gọi và in.
// suspend fun baiTap1() {
//     // TODO
// }
//
// // ⭐⭐ BÀI TẬP 2: 3 hàm suspend: layUser (1s), layDonHang (2s), layThongBao (1s)
// //   a) Gọi tuần tự -> đo thời gian bằng measureTimeMillis { } (~4000ms)
// //   b) Gọi song song bằng async/await (~2000ms)
// suspend fun baiTap2() = coroutineScope {
//     // TODO
// }
//
// // ⭐⭐ BÀI TẬP 3: launch 3 coroutine, mỗi cái in tên mình 3 lần với delay khác nhau
// // (300ms, 500ms, 700ms). Quan sát thứ tự in xen kẽ.
// suspend fun baiTap3() = coroutineScope {
//     // TODO
// }
//
// // ⭐⭐ BÀI TẬP 4: suspend fun dangNhap(user, pass): String - sai thì throw Exception.
// // Gọi trong try/catch.
// suspend fun baiTap4() {
//     // TODO
// }
//
// // ⭐⭐⭐ BÀI TẬP 5: Flow.
// //   fun demNguoc(n: Int): Flow<Int> = flow { for (i in n downTo 1) { delay(500); emit(i) } }
// //   Thu thập và in, sau đó in "Hết giờ!".
// //   Tạo flow 1..10, dùng .filter { } .map { } để in 20 40 60 80 100
// suspend fun baiTap5() {
//     // TODO
// }
