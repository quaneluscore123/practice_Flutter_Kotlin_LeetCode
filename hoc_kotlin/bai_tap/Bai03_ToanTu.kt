package bai03

// =====================================================================
// BÀI 03: TOÁN TỬ                                    Cấp độ: 🍼 Tập bò
// =====================================================================
// 📖 LÝ THUYẾT
// Số học :  +  -  *  /  %
//   ⚠️ Khác Dart: Int / Int = Int (chia lấy nguyên!)   7 / 2 = 3
//                 muốn ra số thực: 7.0 / 2 = 3.5  hoặc  7.toDouble() / 2
// So sánh:  ==  !=  >  <  >=  <=
// Logic  :  &&  ||  !
// Gán    :  =  +=  -=  *=  /=  ++  --
// Khoảng :  x in 1..10   (x có nằm trong [1, 10] không?)
// =====================================================================

fun main() {
    // ---- VÍ DỤ MẪU ----
    val a = 7
    val b = 2
    println("$a / $b = ${a / b}")             // 3
    println("$a.0 / $b = ${a.toDouble() / b}") // 3.5
    println("$a % $b = ${a % b}")             // 1
    println("5 in 1..10: ${5 in 1..10}")      // true

    baiTap1()
    baiTap2()
    baiTap3()
    baiTap4()
    baiTap5()
}

// ⭐ BÀI TẬP 1: Với x = 15, y = 4, in kết quả của + - * / %
// Và in thêm phép chia ra số thực: 3.75
fun baiTap1() {
    val x = 15
    val y = 4
    // TODO
}

// ⭐ BÀI TẬP 2: Đổi nhiệt độ: 37°C sang °F.  F = C * 9 / 5 + 32  -> 98.6
// Chú ý kiểu dữ liệu để không bị mất phần thập phân!
fun baiTap2() {
    // TODO
}

// ⭐⭐ BÀI TẬP 3: Đổi 3725 giây -> "1 giờ 2 phút 5 giây"
fun baiTap3() {
    val tongGiay = 3725
    // TODO
}

// ⭐⭐ BÀI TẬP 4: Với n = 14 in true/false:
//   - n là số chẵn?                  - n nằm trong 10..20?  (dùng in)
//   - n chia hết cho 3 hoặc 7?       - n KHÔNG nằm trong 1..5? (dùng !in)
fun baiTap4() {
    val n = 14
    // TODO
}

// ⭐⭐⭐ BÀI TẬP 5: Tính tiền taxi: 2 km đầu 15.000đ/km, từ km thứ 3 đến 10: 12.000đ/km,
// trên 10 km: 10.000đ/km.   15 km -> 2*15000 + 8*12000 + 5*10000 = 176000đ
// (Chỉ dùng toán tử + hàm minOf/maxOf, chưa cần if)
// Gợi ý: kmBac2 = maxOf(0, minOf(km, 10) - 2)
fun baiTap5() {
    val km = 15
    // TODO
}
