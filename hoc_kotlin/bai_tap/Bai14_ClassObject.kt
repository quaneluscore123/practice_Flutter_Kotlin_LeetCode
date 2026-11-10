package bai14

// =====================================================================
// BÀI 14: CLASS & OBJECT                             Cấp độ: 🏃 Tập chạy
// =====================================================================
// 📖 LÝ THUYẾT
//   class Meo(val ten: String, var tuoi: Int) {        // primary constructor
//       init { println("Đã tạo mèo $ten") }            // chạy khi tạo object
//       fun keu() = println("$ten: Meo meo!")
//       constructor(ten: String) : this(ten, 0)        // constructor phụ
//   }
//   val tom = Meo("Tom", 3)                            // KHÔNG cần chữ new
//
// Thuộc tính:
//   private var soDu = 0               // chỉ dùng trong class
//   var soDu = 0
//       private set                    // bên ngoài đọc được, KHÔNG sửa được
//   val laNguoiLon: Boolean
//       get() = tuoi >= 18             // thuộc tính tính toán (getter)
//   var tuoi = 0
//       set(value) { if (value >= 0) field = value }   // setter có kiểm tra
//
// override fun toString() = "..."     để println(object) đẹp
// =====================================================================

class Meo(val ten: String, var tuoi: Int) {
    init {
        println("🐱 Đã tạo mèo $ten")
    }

    constructor(ten: String) : this(ten, 0)

    fun keu() = println("$ten: Meo meo!")

    override fun toString() = "Meo(ten=$ten, tuoi=$tuoi)"
}

fun main() {
    // ---- VÍ DỤ MẪU ----
    val tom = Meo("Tom", 3)
    val mimi = Meo("Mimi")
    tom.keu()
    println(mimi)

    // ---- Bỏ comment để kiểm tra ----
    // val hcn = HinhChuNhat(4.0, 5.0)
    // println("S=${hcn.dienTich}, P=${hcn.chuVi}, vuông? ${hcn.laHinhVuong}")
    //
    // val sv = SinhVien("Quan", 18, 8.5)
    // println(sv)                 // SinhVien(Quan, 18 tuổi, ĐTB 8.5 - Giỏi)
    // sv.diemTB = 15.0            // In: Điểm không hợp lệ! (giữ nguyên 8.5)
    //
    // val tk = TaiKhoan("Quan")
    // tk.napTien(500_000)
    // tk.rutTien(200_000)
    // tk.rutTien(999_999)         // Không đủ tiền!
    // println(tk.soDu)            // 300000
    // // tk.soDu = 1_000_000_000  // ❌ phải báo lỗi biên dịch
    // tk.inLichSu()
}

// ⭐ BÀI TẬP 1: class HinhChuNhat(dai, rong) với các thuộc tính getter:
//   dienTich, chuVi, laHinhVuong
// TODO

// ⭐⭐ BÀI TẬP 2: class SinhVien(ten, tuoi, diemTB)
//   - diemTB có setter kiểm tra 0..10, sai thì in "Điểm không hợp lệ!"
//   - thuộc tính xepLoai (getter)   - override toString()
// TODO

// ⭐⭐ BÀI TẬP 3: class TaiKhoan(chuTaiKhoan)
//   - soDu: bên ngoài chỉ đọc (private set)
//   - napTien, rutTien (kiểm tra hợp lệ)
//   - lưu lịch sử giao dịch vào private val lichSu = mutableListOf<String>()
//   - inLichSu()
// TODO

// ⭐⭐⭐ BÀI TẬP 4: class GioHang có list sản phẩm (ten, gia, soLuong):
//   themSanPham, xoaSanPham(ten), tongTien, apMaGiamGia(phanTram) , inHoaDon()
//   (sản phẩm đã có thì cộng dồn số lượng)
// TODO
