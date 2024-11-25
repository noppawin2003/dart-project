import 'dart:io';

// ฟังก์ชันสร้างผู้ใช้ใหม่
void createUser({required String name, required int age, bool isActive = true}) {
  print('User Created:');
  print('Name: $name');
  print('Age: $age');
  print('Active: $isActive');
}

void main() {
  // รับชื่อจากผู้ใช้
  print('กรุณากรอกชื่อของผู้ใช้:');
  String? name = stdin.readLineSync();

  // รับอายุจากผู้ใช้
  print('กรุณากรอกอายุของผู้ใช้:');
  int? age = int.tryParse(stdin.readLineSync()!);

  // ตรวจสอบว่าผู้ใช้กรอกข้อมูลถูกต้องหรือไม่
  if (name == null || age == null || age <= 0) {
    print('ข้อมูลไม่ถูกต้อง กรุณากรอกใหม่');
    return;
  }

  // รับสถานะการใช้งาน (isActive) จากผู้ใช้
  print('กรุณากรอกสถานะการใช้งาน (active หรือ inactive):');
  String? status = stdin.readLineSync();

  bool isActive = status?.toLowerCase() == 'active';

  // เรียกฟังก์ชัน createUser เพื่อสร้างผู้ใช้
  createUser(name: name, age: age, isActive: isActive);
}
