import 'dart:io';

void main() {
    List<List<dynamic>> danhSachSV = [];

    var option = 0;
    while (option != 4) {
        print("=== Quản Lý Sinh Viên ===");
        print("1. Thêm sinh viên");
        print("2. Hiển thị danh sách SV");
        print("3. Tìm SV có ĐTB cao nhất");
        print("4. Thoát");
        print("Chọn chức năng:");
        option = int.parse(stdin.readLineSync().toString());

        switch (option) {
        case 1:
            themSinhVien(danhSachSV);
            break;
        case 2:
            hienThiDanhSach(danhSachSV);
            break;
        case 3:
            timSVMaxDTB(danhSachSV);
            break;
        case 4:
            return;
        }
    }
}

void themSinhVien(danhSachSV) {
    print("Nhập họ tên: ");
    var hoTen = stdin.readLineSync().toString();
    print("Nhập điểm Toán:");
    var diemToan = double.parse(stdin.readLineSync().toString());
    print("Nhập điểm Lý:");
    var diemLy = double.parse(stdin.readLineSync().toString());
    print("Nhập điểm Hóa:");
    var diemHoa = double.parse(stdin.readLineSync().toString());

    var diemTrungBinh = (diemToan + diemLy + diemHoa) / 3;
    var xepLoai = xepLoaiHocLuc(diemTrungBinh);

    danhSachSV.add([hoTen, diemToan, diemLy, diemHoa, diemTrungBinh, xepLoai]);

    print("Thêm sinh viên thành công!");
}

String xepLoaiHocLuc(diemTrungBinh) {
    if (diemTrungBinh < 5) return "Kém";
    if (diemTrungBinh < 7) return "Khá";
    if (diemTrungBinh <= 9) return "Giỏi";

    return "Xuất sắc";
}

void hienThiDanhSach(danhSachSV) {
    for (var sinhVien in danhSachSV) {
        print("Họ tên: ${sinhVien[0]} - Điểm Toán: ${sinhVien[1]} - Điểm Lý: ${sinhVien[2]} - Điểm Hóa: ${sinhVien[3]} | ĐTB: ${sinhVien[4].toStringAsFixed(2)} | Xếp loại: ${sinhVien[5]}");
    }
}

void timSVMaxDTB(danhSachSV) {
    var sinhVienDiemMax = null;
    double diemMax = 0;
    for (var sinhVien in danhSachSV) {
        if (sinhVien[4] > diemMax) {
            sinhVienDiemMax = sinhVien;
        }
    }

    if (sinhVienDiemMax != null) {
        print("Sinh viên có ĐTB cao nhất:");
        print("Họ tên: ${sinhVienDiemMax[0]} | ĐTB: ${sinhVienDiemMax[4].toStringAsFixed(2)} | Xếp loại: ${sinhVienDiemMax[5]}");
    } else {
        print("Không có sinh viên có ĐTB cao nhất");
    }
}