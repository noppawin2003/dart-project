import 'dart:io';

void main() {
  print('ค่าอาหารทั้งหมด:');
  double totalCost = double.parse(stdin.readLineSync()!);
  print('จำนวนคนที่รับประทาน:');
  int numberOfPeople = int.parse(stdin.readLineSync()!); 

  double costPerPerson = totalCost / numberOfPeople;

  print('ค่าอาหารต่อคน: \$${costPerPerson.toStringAsFixed(2)}');
}
