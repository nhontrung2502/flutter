import 'dart:io';

void main() {
    List<List<dynamic>> danhSachSP = [];

    var option = 0;
    while (option != 5) {
        print("=== Quản Lý Sản Phẩm ===");
        print("1. Thêm sản phẩm");
        print("2. Hiển thị danh sách sản phẩm");
        print("3. Tìm sản phẩm theo tên");
        print("4. Bán sản phẩm");
        print("5. Thoát");
        print("Chọn chức năng:");
        option = int.parse(stdin.readLineSync().toString());

        switch (option) {
        case 1:
            themSanPham(danhSachSP);
            break;
        case 2:
            hienThiDanhSach(danhSachSP);
            break;
        case 3:
            timSanPhamTheoTen(danhSachSP);
            break;
        case 4:
            banSanPham(danhSachSP);
            break;
        case 5:
            return;
        }
    }
}

void themSanPham(danhSachSP) {
    print("Nhập tên sản phẩm: ");
    var tenSanPham = stdin.readLineSync().toString();
    print("Nhập giá tiền:");
    var gia = double.parse(stdin.readLineSync().toString());
    print("Nhập số lượng trong kho:");
    var soLuong = int.parse(stdin.readLineSync().toString());

    danhSachSP.add([tenSanPham, gia, soLuong]);

    print("Thêm sản phẩm thành công!");
}

void hienThiDanhSach(danhSachSP) {
    for (var sanPham in danhSachSP) {
        print("Tên sản phẩm: ${sanPham[0]} - Giá tiền: ${sanPham[1]} - Số lượng: ${sanPham[2]}");
    }
}

void timSanPhamTheoTen(danhSachSP) {
    print("Nhập tên sản phẩm cần tìm: ");
    var tenSanPham = stdin.readLineSync().toString();

    var notFound = true;
    for (var sanPham in danhSachSP) {
        if (sanPham[0].contains(tenSanPham)) {
            print("Tên sản phẩm: ${sanPham[0]} - Giá tiền: ${sanPham[1]} - Số lượng: ${sanPham[2]}");
            notFound = false;
        }
    }

    if (notFound) {
        print("Không tìm thấy sản phẩm nào có tên là $tenSanPham");
    }
}

void banSanPham(danhSachSP) {
    print("Nhập tên sản phẩm cần bán: ");
    var tenSanPham = stdin.readLineSync().toString();
    print("Nhập số lượng cần bán:");
    var soLuong = int.parse(stdin.readLineSync().toString());

    var notFound = true;
    for (var sanPham in danhSachSP) {
        if (tenSanPham == sanPham[0]) {
            notFound = false;
            if (soLuong <= sanPham[2]) {
                sanPham[2] -=  soLuong;
                print("Bán sản phẩm thành công!");
            } else {
                print("Bán sản phẩm thất bại! Tồn kho không đủ số lượng!");
            }
        }
    }

    if (notFound) {
        print("Không tìm thấy sản phẩm nào có tên là $tenSanPham");
    }
}