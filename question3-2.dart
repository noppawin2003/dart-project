import 'dart:io';
bool isEven(int number) {
  return number % 2 == 0; 
}

void main() {

  print('กรุณากรอกตัวเลข:');
  int? number = int.tryParse(stdin.readLineSync()!);
  if (number == null) {
    print('กรุณากรอกตัวเลขที่ถูกต้อง');
    return;
  }
  bool result = isEven(number);

  if (result) {
    print('$number เป็นเลขคู่');
  } else {
    print('$number เป็นเลขคี่');
  }
}
