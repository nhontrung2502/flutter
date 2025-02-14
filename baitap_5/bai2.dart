import 'dart:io';

void main() {
  print("Quản lý đơn bán hàng");
  print("Nhập tên sản phẩm:");
  var tenSanPham = stdin.readLineSync().toString();
  print("Nhập số lượng mua:");
  var soLuongMua = double.parse(stdin.readLineSync().toString());
  print("Nhập đơn giá:");
  var donGia = double.parse(stdin.readLineSync().toString());

  // 1. Tính thành tiền
  var thanhTien = soLuongMua * donGia;

  // 2. Tính giảm giá
  var giamGia = (thanhTien >= 1000000) ? thanhTien * 0.1 : ((thanhTien >= 500000) ? thanhTien * 0.05 : 0);

  // 3. Tính thuế VAT
  var thueVat = thanhTien * 0.08;

  var tongTienTruocThue = thanhTien - giamGia;
  var tongTienSauThue = tongTienTruocThue + thueVat;

  print("Tên sản phẩm: " + tenSanPham);
  print("Số lượng: " + soLuongMua.toString());
  print("Đơn giá: " + donGia.toString());
  print("Thành tiền: " + thanhTien.toString());
  print("Giảm giá: " + giamGia.toString());
  print("Thuế VAT: " + thueVat.toString());
  print("Tổng thanh toán: " + tongTienSauThue.toString());
}