import 'dart:io';

double calculateArea({double length = 1, double width = 1}) {
  return length * width;
}

void main() {

  print('กรุณากรอกความยาวของสี่เหลี่ยมผืนผ้า:');
  double? length = double.tryParse(stdin.readLineSync()!);

  print('กรุณากรอกความกว้างของสี่เหลี่ยมผืนผ้า:');
  double? width = double.tryParse(stdin.readLineSync()!);

  if (length == null || width == null) {
    print('กรุณากรอกตัวเลขที่ถูกต้อง');
    return;
  }

  double area = calculateArea(length: length, width: width);

  print('พื้นที่ของสี่เหลี่ยมผืนผ้า: $area');
}
