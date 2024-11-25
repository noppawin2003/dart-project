void createUser(String name, int age, {bool isActive = true}) {
  print('Name: $name');
  print('Age: $age');
  print('Active: $isActive');
}
void main() {

  createUser('Aingo 5555', 30); 
  createUser('Aingo 5555', 25, isActive: false);  
}
