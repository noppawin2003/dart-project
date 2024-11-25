import 'dart:io';

void main() {
  print('กรุณากรอกอักขระ:');
  String input = stdin.readLineSync()!;

  if (input.length == 1) {
    if (isVowel(input)) {
      print('$input เป็นสระ');
    } else if (isConsonant(input)) {
      print('$input เป็นพยัญชนะ');
    } else {
      print('$input ไม่ใช่ตัวอักษร');
    }
  } else {
    print('กรุณากรอกอักขระเพียงตัวเดียว');
  }
}

bool isVowel(String char) {

  String vowels = 'aeiouAEIOU';
  return vowels.contains(char);
}

bool isConsonant(String char) {

  String consonants = 'bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ';
  return consonants.contains(char);
}
