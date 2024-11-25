import 'dart:io';
import 'dart:math';

String generateRandomPassword(int length) {
  const characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#\$%^&*()_+-=[]{}|;:,.<>?';
  Random random = Random();
  StringBuffer password = StringBuffer();

  for (int i = 0; i < length; i++) {
    int index = random.nextInt(characters.length);
    password.write(characters[index]);
  }

  return password.toString();
}

void main() {
  print('กรุณากรอกความยาวของรหัสผ่าน:');
  int? length = int.tryParse(stdin.readLineSync()!);

  if (length == null || length <= 0) {
    print('กรุณากรอกค่าความยาวเป็นตัวเลขบวก');
    return;
  }


  String password = generateRandomPassword(length);


  print('รหัสผ่านที่สร้างขึ้น: $password');
}
