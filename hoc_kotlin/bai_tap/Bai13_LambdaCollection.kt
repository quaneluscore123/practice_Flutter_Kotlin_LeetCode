package bai13

// =====================================================================
// BÀI 13: LAMBDA & HÀM BẬC CAO & XỬ LÝ COLLECTION    Cấp độ: 🏃 Tập chạy
// =====================================================================
// 📖 LÝ THUYẾT
//   val binhPhuong = { x: Int -> x * x }
//   val cong: (Int, Int) -> Int = { a, b -> a + b }
//   Lambda có 1 tham số -> dùng `it`:   ds.map { it * 2 }
//   Lambda là tham số cuối -> đưa ra ngoài ngoặc:  ds.filter { it > 5 }
//
// Hàm xử lý collection (dùng NHIỀU trong Android):
//   map  filter  reduce  fold  any  all  none  count  find  first  sumOf
//   sortedBy { }  sortedByDescending { }  groupBy { }  partition { }
//   take(n)  drop(n)  chunked(n)  zip(other)  flatMap { }  maxByOrNull { }
//   associateBy { }  distinct()  windowed(n)
//
// Hàm nhận hàm làm tham số:
//   fun tinh(a: Int, b: Int, phepToan: (Int, Int) -> Int) = phepToan(a, b)
//   tinh(3, 4) { x, y -> x * y }
// =====================================================================

data class SanPham(val ten: String, val gia: Int, val loai: String)

fun main() {
    // ---- VÍ DỤ MẪU ----
    val so = listOf(1, 2, 3, 4, 5, 6)
    println(so.map { it * 10 })
    println(so.filter { it % 2 == 1 })
    println(so.fold(0) { tong, x -> tong + x })

    val sp = listOf(
        SanPham("Laptop", 20000000, "Điện tử"),
        SanPham("Chuột", 300000, "Điện tử"),
        SanPham("Áo thun", 150000, "Thời trang"),
        SanPham("Quần jean", 450000, "Thời trang"),
        SanPham("Sách Kotlin", 250000, "Sách"),
    )
    baiTap1()
    baiTap2(sp)
    baiTap3(sp)
    baiTap4()
    baiTap5()
}

// ⭐ BÀI TẬP 1: ten = listOf("an", "bình", "chi")
//   - viết hoa tất cả;  - tạo câu "Chào An" (viết hoa chữ đầu);  - lọc tên dài > 2
fun baiTap1() {
    // TODO
}

// ⭐⭐ BÀI TẬP 2: Với danh sách sản phẩm:
//   - tên các sản phẩm giá > 200.000
//   - tổng giá trị (sumOf)
//   - sản phẩm đắt nhất (maxByOrNull)
//   - sắp xếp theo giá tăng dần, in tên
//   - có sản phẩm nào loại "Sách" không? (any)
fun baiTap2(sp: List<SanPham>) {
    // TODO
}

// ⭐⭐ BÀI TẬP 3: Nhóm sản phẩm theo loại (groupBy), in:
//   Điện tử: Laptop, Chuột (tổng 20300000đ)
//   Thời trang: ...
// Và chia làm 2 nhóm: rẻ (< 300k) và đắt bằng partition.
fun baiTap3(sp: List<SanPham>) {
    // TODO
}

// ⭐⭐ BÀI TẬP 4: Tự viết hàm bậc cao:
//   fun locTuyChinh(ds: List<Int>, dieuKien: (Int) -> Boolean): List<Int>
// (tự viết lại filter bằng vòng lặp). Gọi với: số chẵn, số > 3, số nguyên tố.
fun baiTap4() {
    // TODO
}

// ⭐⭐⭐ BÀI TẬP 5: Closure - hàm trả về hàm.
//   fun taoBoDem(): () -> Int
//   val dem = taoBoDem(); dem() -> 1; dem() -> 2
//   fun nhanVoi(k: Int): (Int) -> Int    ;   val gapBa = nhanVoi(3); gapBa(5) -> 15
fun baiTap5() {
    // TODO
}
