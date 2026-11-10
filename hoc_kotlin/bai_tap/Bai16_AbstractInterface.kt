package bai16

import kotlin.math.PI
import kotlin.math.sqrt

// =====================================================================
// BÀI 16: ABSTRACT CLASS & INTERFACE                 Cấp độ: 🚴 Tập xe đạp
// =====================================================================
// 📖 LÝ THUYẾT
// abstract class: lớp khung, không tạo object trực tiếp. (tự động "open")
//   abstract class Hinh {
//       abstract val ten: String
//       abstract fun dienTich(): Double
//       fun inRa() = println("$ten: ${dienTich()}")
//   }
//
// interface: "hợp đồng" kỹ năng. Một class implement được NHIỀU interface.
// Interface trong Kotlin có thể có method viết sẵn (giống mixin của Dart).
//   interface BietBoi { fun boi() = println("Đang bơi") }
//   interface BietBay { fun bay() }
//   class Vit : DongVat(), BietBoi, BietBay { override fun bay() = ... }
//
// 🔁 Dart mixin (with)  ≈  Kotlin interface có method mặc định
// =====================================================================

abstract class Hinh {
    abstract val ten: String
    abstract fun dienTich(): Double
    abstract fun chuVi(): Double
    fun inThongTin() = println("$ten: S = ${"%.2f".format(dienTich())}, P = ${"%.2f".format(chuVi())}")
}

fun main() {
    // ---- Bỏ comment để kiểm tra ----
    // val ds = listOf(HinhTron(2.0), HinhVuong(3.0), TamGiac(3.0, 4.0, 5.0))
    // ds.forEach { it.inThongTin() }
    // println("Hình lớn nhất: ${ds.maxBy { it.dienTich() }.ten}")
    //
    // val vit = Vit()
    // vit.boi(); vit.bay(); vit.chay()
    //
    // muaHang(TheNganHang("1234"), 500_000.0)
    // muaHang(TienMat(), 100_000.0)
    println(PI + sqrt(4.0)) // dòng này chỉ để import không bị báo "chưa dùng", xoá đi khi làm
}

// ⭐ BÀI TẬP 1: HinhTron(banKinh) và HinhVuong(canh) kế thừa Hinh.
// TODO

// ⭐⭐ BÀI TẬP 2: TamGiac(a, b, c). Diện tích Heron: p = (a+b+c)/2, S = sqrt(p(p-a)(p-b)(p-c))
// TODO

// ⭐⭐ BÀI TẬP 3: Interface BietBoi, BietBay, BietChay (có method mặc định).
// Tạo: Vit (cả 3), Ca (bơi), Chim (bay), Ngua (chạy). Vit ghi đè bay() kiểu riêng.
// TODO

// ⭐⭐⭐ BÀI TẬP 4: interface CoTheThanhToan { fun thanhToan(soTien: Double) }
//                   interface CoTheHoanTien  { fun hoanTien(soTien: Double) }
// TheNganHang(soThe) implement cả 2 ; TienMat chỉ CoTheThanhToan.
// fun muaHang(pt: CoTheThanhToan, tien: Double) - nếu pt là CoTheHoanTien
// thì in thêm "Hỗ trợ hoàn tiền".
// TODO
