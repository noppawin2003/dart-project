double calculateArea({double length = 1, double width = 1}) {
  return length * width;
}
void main() {
  double area1 = calculateArea();  
  print('พื้นที่มีค่าเริ่มต้น: $area1'); 

  double area2 = calculateArea(length: 5, width: 10); 
  print('พื้นที่ยาว 5 กว้าง 10: $area2'); 
}
