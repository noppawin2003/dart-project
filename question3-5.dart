import 'dart:math';

String generateRandomPassword(int length) {
  const characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
  Random rand = Random();

  StringBuffer password = StringBuffer();
  
  for (int i = 0; i < length; i++) {
    int index = rand.nextInt(characters.length);  
    password.write(characters[index]);
  }

  return password.toString();
}

void main() {
  int passwordLength = 6; 
  String randomPassword = generateRandomPassword(passwordLength);
  print('Your generated password is: $randomPassword');
}
