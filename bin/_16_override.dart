// การเรียนรู้ภาษา Dart
// หัวข้อที่ 14 เรื่องการเขียน Override ข้อมูล

void main (){

  var obj = new Airplane();
  print(obj.name);
  obj.fuel=30;
  //obj.addFuel(20);
  obj.fly();

}

// Parent Class
class Vehicle {

  String name = 'Vehicle';
  
  // Method void คือ function ที่ไม่มีการ return ค่า
  void move(){
    print("${name}");
  }

  void addFuel(int fuel){}

}

// Child Class
class Airplane extends Vehicle {
  
  // การกำหนด propertie
  int fuel = 0;

  @override
  String name = 'Aribus A380';

  // การทำ Ovrerride Method จาก Class แม่
  @override
  void addFuel(int fuel){
    this.fuel = fuel;
  }

  // การสร้าง Method ใน Class Child
  void fly(){
    if (this.fuel>=30) {
      print("${name} Fly.");
    } else {
      print('Not Fly.');
    }
    
  }

}