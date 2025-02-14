import 'dart:io';

void main() {
  print("Quản lý nhân viên");
  print("Nhập họ tên nhân viên:");
  var hoTen = stdin.readLineSync().toString();
  print("Nhập số giờ làm việc:");
  var soGioLam = double.parse(stdin.readLineSync().toString());
  print("Nhập lương mỗi giờ:");
  var luongMoiGio = double.parse(stdin.readLineSync().toString());

  // 1. Tính tổng lương
  var tongLuong = soGioLam * luongMoiGio;

  // 2. Tính phụ cấp
  var phuCap = (soGioLam > 40) ? tongLuong * 0.2 : 0;

  // 3. Tính thuế thu nhập
  var luongTruocThue = tongLuong + phuCap;
  var thueThuNhap = (luongTruocThue > 10000000) ? luongTruocThue * 0.1 : ((luongTruocThue >= 7000000) ? luongTruocThue * 0.05 : 0);

  var luongThucLanh = luongTruocThue - thueThuNhap;

  print("Nhân viên: " + hoTen);
  print("Tổng lương trước thuế: " + luongTruocThue.toString());
  print("Thuế thu nhập: " + thueThuNhap.toString());
  print("Tổng lương thực lãnh: " + luongThucLanh.toString());
}