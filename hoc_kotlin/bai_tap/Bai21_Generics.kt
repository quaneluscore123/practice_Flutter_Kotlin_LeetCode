package bai21

// =====================================================================
// BÀI 21: GENERICS                                   Cấp độ: 🏍️ Tập xe máy
// =====================================================================
// 📖 LÝ THUYẾT
//   class Hop<T>(val giaTri: T)
//   fun <T> layDau(ds: List<T>): T? = ds.firstOrNull()
//   fun <T : Comparable<T>> lonNhat(a: T, b: T) = if (a > b) a else b   // giới hạn kiểu
//
// Nâng cao (đọc để biết):
//   out T  -> chỉ "trả ra" T (producer)   VD: List<out T>
//   in T   -> chỉ "nhận vào" T (consumer) VD: Comparator<in T>
//   inline fun <reified T> ... -> dùng được  `is T`  bên trong
// =====================================================================

class Hop<T>(val giaTri: T) {
    override fun toString() = "Hop($giaTri)"
}

fun main() {
    // ---- VÍ DỤ MẪU ----
    println(Hop(5))
    println(Hop("Xin chào"))

    // ---- Bỏ comment để kiểm tra ----
    // println(hoanDoi(1 to "a"))          // (a, 1)
    // println(lonNhat("chuối", "táo"))    // táo
    // val ns = NganXep<Int>()
    // ns.day(1); ns.day(2); ns.day(3)
    // println(ns.lay())                   // 3
    // println(ns.xem())                   // 2
    // val hd = HangDoi<String>()
    // hd.them("A"); hd.them("B")
    // println(hd.lay())                   // A
    // println(locTheoKieu<String>(listOf(1, "a", 2.0, "b")))   // [a, b]
}

// ⭐ BÀI TẬP 1: fun <A, B> hoanDoi(p: Pair<A, B>): Pair<B, A>
// TODO

// ⭐ BÀI TẬP 2: fun <T : Comparable<T>> lonNhat(a: T, b: T): T
// TODO

// ⭐⭐ BÀI TẬP 3: class NganXep<T> (Stack): day, lay(): T?, xem(): T?, rong, kichThuoc
// TODO

// ⭐⭐ BÀI TẬP 4: class HangDoi<T> (Queue - vào trước ra trước): them, lay(): T?, rong
// TODO

// ⭐⭐⭐ BÀI TẬP 5: inline fun <reified T> locTheoKieu(ds: List<Any>): List<T>
// (lọc các phần tử có kiểu T).  Gợi ý: ds.filter { it is T }.map { it as T }
// hoặc dùng sẵn ds.filterIsInstance<T>() rồi so sánh.
// TODO
