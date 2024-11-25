import 'dart:io';

int maxNumber(int num1, int num2, int num3) {

  return (num1 >= num2 && num1 >= num3) ? num1 : (num2 >= num3 ? num2 : num3);
}

void main() {
 
  print('กรุณากรอกตัวเลขตัวที่ 1:');
  int? num1 = int.tryParse(stdin.readLineSync()!);

  print('กรุณากรอกตัวเลขตัวที่ 2:');
  int? num2 = int.tryParse(stdin.readLineSync()!);

  print('กรุณากรอกตัวเลขตัวที่ 3:');
  int? num3 = int.tryParse(stdin.readLineSync()!);

  if (num1 == null || num2 == null || num3 == null) {
    print('กรุณากรอกตัวเลขที่ถูกต้อง');
    return;
  }

  int result = maxNumber(num1, num2, num3);

  print('ตัวเลขที่มากที่สุดคือ: $result');
}
