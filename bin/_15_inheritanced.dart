// การเรียนรู้ภาษา Dart
// หัวข้อที่ 15 เรื่องการเขียน สืบทอดของ Class(Inheritanced)
// Parent Class (คลาสแม่) // Child Class (คลาสลูก)

void main(){

  // Object จาก Class แม่
  var animal = new Animal();
  print(animal.name);
  animal.eat();

  // Object จาก Class ลูก
  Bird bird = new Bird();
  print(bird.name);
  bird.eat();
  bird.fly();

}

// Parent Class
class Animal {

  String name='animal';

  void eat(){
    print('Animal Eat.');
  }

}

// Child Class
class Bird extends Animal {

  String name = 'นก';
  void fly(){
    print('fly');
  }

}