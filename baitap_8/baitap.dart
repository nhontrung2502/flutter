import 'dart:io';

void main(List<String> args) {
  List<Map<String, dynamic>> danhSachSP = [];

  var option = 0;
  while (option != 6) {
    print("=== Chương Trình Quản Lý Sản Phẩm ===");
    print("1. Thêm sản phẩm vào giỏ hàng");
    print("2. Sửa sản phẩm trong giỏ hàng");
    print("3. Xóa sản phẩm trong giỏ hàng");
    print("4. Hiển thị giỏ hàng");
    print("5. Tính tổng tiền hóa đơn");
    print("6. Thoát");
    print("Chọn chức năng:");
    option = int.parse(stdin.readLineSync().toString());

    switch (option) {
      case 1:
        themSanPham(danhSachSP);
        break;
      case 2:
        suaSanPhamTrongGioHang(danhSachSP);
        break;
      case 3:
        xoaSanPhamTrongGioHang(danhSachSP);
        break;
      case 4:
        hienThiGioHang(danhSachSP);
        break;
      case 5:
        tinhTongHoaDon(danhSachSP);
        break;
      case 6:
        return;
    }
  }
}

void themSanPham(danhSachSP) {
  print("Nhập tên SP:");
  var ten = stdin.readLineSync().toString();
  print("Nhập số lượng:");
  var soLuong = int.parse(stdin.readLineSync().toString());
  print("Nhập giá tiền:");
  var giaTien = double.parse(stdin.readLineSync().toString());

  Map<String, dynamic> sanPham = {
    'ten': ten,
    'soLuong': soLuong,
    'giaTien': giaTien
  };

  danhSachSP.add(sanPham);

  print("Thêm sản phẩm thành công!");
}

void hienThiGioHang(danhSachSP) {
  var i = 1;
  for (var sp in danhSachSP) {
    print("$i. Tên sản phẩm: ${sp['ten']} - Số lượng: ${sp['soLuong']} - Giá tiền: ${sp['giaTien']}");
    i++;
  }
}

void tinhTongHoaDon(danhSachSP) {
  double tongTien = 0;

  for (var sp in danhSachSP) {
    tongTien += sp.soLuong * sp.giaTien;
  }

  print("Tổng số tiền phải thanh toán là: $tongTien");
}

void suaSanPhamTrongGioHang(danhSachSP) {
  hienThiGioHang(danhSachSP);

  print("Nhập số tự của sản phẩm muốn sửa:");
  var index = int.parse(stdin.readLineSync().toString());
  
  if (index > 0 && index <= danhSachSP.length) {
    var sanPham = danhSachSP[index - 1];

    print("Nhập tên SP mới:");
    var tenMoi = stdin.readLineSync().toString();
    if (tenMoi.isNotEmpty) sanPham['ten'] = tenMoi;
  
    print("Nhập số lượng mới:");
    var soLuongMoi = stdin.readLineSync().toString();
    if (soLuongMoi.isNotEmpty) sanPham['soLuong'] = int.parse(soLuongMoi);
  
    print("Nhập giá tiền mới:");
    var giaTienMoi = stdin.readLineSync().toString();
    if (giaTienMoi.isNotEmpty) sanPham['giaTien'] = double.parse(giaTienMoi);
  
    print("Sửa sản phẩm thành công!");
  } else {
    print("Sửa sản phẩm thất bại! Số thứ tự không hợp lệ!");
  }
}

void xoaSanPhamTrongGioHang(danhSachSP) {
  hienThiGioHang(danhSachSP);

  print("Nhập số tự của sản phẩm muốn xóa:");
  var index = int.parse(stdin.readLineSync().toString());
  
  if (index > 0 && index <= danhSachSP.length) {
    danhSachSP.removeAt(index - 1);
    print("Xóa sản phẩm thành công!");
  } else {
    print("Xóa sản phẩm thất bại! Số thứ tự không hợp lệ!");
  }
}