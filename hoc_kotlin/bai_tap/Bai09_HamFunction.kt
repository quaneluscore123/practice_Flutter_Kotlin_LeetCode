package bai09

// =====================================================================
// BÀI 09: HÀM (FUNCTION)                             Cấp độ: 🚶 Tập đi
// =====================================================================
// 📖 LÝ THUYẾT
//   fun cong(a: Int, b: Int): Int {          // fun tên(tham số: Kiểu): KiểuTrảVề
//       return a + b
//   }
//   fun nhan(a: Int, b: Int) = a * b         // hàm 1 biểu thức (tự suy kiểu)
//
//   fun chao(ten: String, loiChao: String = "Xin chào") { ... }  // giá trị mặc định
//   chao("Quan")
//   chao(loiChao = "Hi", ten = "Quan")       // gọi theo TÊN tham số (đổi thứ tự được)
//
//   fun tong(vararg so: Int): Int = so.sum() // số lượng tham số tuỳ ý
//   tong(1, 2, 3, 4)
//
//   Hàm không trả về gì: kiểu Unit (có thể bỏ qua không ghi)
// =====================================================================

fun cong(a: Int, b: Int): Int {
    return a + b
}

fun nhan(a: Int, b: Int) = a * b

fun chao(ten: String, loiChao: String = "Xin chào") = println("$loiChao, $ten!")

fun main() {
    // ---- VÍ DỤ MẪU ----
    println(cong(3, 4))
    println(nhan(3, 4))
    chao("Quan")
    chao(loiChao = "Chào buổi sáng", ten = "Lan")

    // ---- Kiểm tra bài làm ----
    println(binhPhuong(5))                 // 25
    println(laSoChan(7))                   // false
    println(tinhBMI(65.0, 1.7))            // 22.49...
    gioiThieu("Quan", 18)                  // Tôi là Quan, 18 tuổi, đến từ Việt Nam
    gioiThieu(ten = "Lan", tuoi = 20, queQuan = "Huế")
    println(trungBinh(4, 8, 6, 2))         // 5.0
    println(soNguyenToDenN(30))            // [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
    println(fibonacci(10))                 // 55
    println(luyThua(2, 10))                // 1024
}

// ⭐ BÀI TẬP 1: Viết dạng hàm 1 biểu thức (dùng dấu =)
fun binhPhuong(n: Int): Int = 0 // TODO

// ⭐ BÀI TẬP 2
fun laSoChan(n: Int): Boolean = false // TODO

// ⭐ BÀI TẬP 3: BMI = canNang / (chieuCao^2)
fun tinhBMI(canNang: Double, chieuCao: Double): Double {
    return 0.0 // TODO
}

// ⭐⭐ BÀI TẬP 4: queQuan mặc định là "Việt Nam"
fun gioiThieu(ten: String, tuoi: Int, queQuan: String = "Việt Nam") {
    // TODO
}

// ⭐⭐ BÀI TẬP 5: vararg - trung bình cộng của các số truyền vào (rỗng thì trả 0.0)
fun trungBinh(vararg so: Int): Double {
    return 0.0 // TODO
}

// ⭐⭐ BÀI TẬP 6: Viết thêm hàm laSoNguyenTo(n: Int): Boolean rồi dùng nó ở đây.
fun soNguyenToDenN(n: Int): List<Int> {
    return listOf() // TODO
}

// ⭐⭐⭐ BÀI TẬP 7: Đệ quy Fibonacci. F(0)=0, F(1)=1
fun fibonacci(n: Int): Long {
    return 0 // TODO
}

// ⭐⭐⭐ BÀI TẬP 8: Đệ quy luỹ thừa a^n (không dùng Math.pow).
// 🎁 Nâng cao: a^n = (a^(n/2))^2 nếu n chẵn -> nhanh hơn rất nhiều
fun luyThua(a: Int, n: Int): Long {
    return 0 // TODO
}
