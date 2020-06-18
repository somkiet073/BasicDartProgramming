// การเรียนรู้ภาษา Dart 
// หัวข้อที่ 2 เรื่องตัวแปลและชนิดข้อมูล (Variable & Data type)

/*
  int เก็บเลขจำนวนเต็ม เช่น 0,1,-5,...999
  double เก็บเลขทศนิยม เช่น 0.0, 0.15,...999.9999
  num เก็บตัวเลขจำนวนเต็ม และทศนิยมทั่วไป เช่น 12, 0.15
  bool เก็บค่าทางตรรกศาสตร์ เช่น true, false
  String เก็บตัวอักษร เช่น "Hello", "Welcome"
  dynamic ตัวแปรที่เปลี่ยนแปลงค่าได้
  Lists ข้อมูลที่เป็น Array
  Sets ข้อมูล array ที่ไม่ซ้ำกัน
  Maps เก็บข้อมูลแบบ Key:Value
 */

void main(){
  // การสร้างตัวแปล ไม่กำหนด value ลงไป
  // ภาษา dart จะเข้าใจว่าเป็น null ทั้งหมด

  int x;
  double d;
  bool isDone;
  String name;

  print(x);
  print(d);
  print(isDone);
  print(name);

  print("$x \n$d \n$isDone \n$name");
  // ใน dart ยังมีการกำหนดตัวแปรแบบ ไม่ต้องกำหนด type(duck type)
  // ด้สนการใช้ var, final, และ const

  var firstname = 'Somkiet';
  final age = 27;
  const status = true;

  print(firstname);
  print(age);
  print(status);

  // การเปลี่ยนแปลงค่า ของ firstname
  firstname = 'Johny';
  print(firstname);

  // เปลี่ยนแปลงค่า ของ  age
  // age = '28'; //error ไม่สามารถเปลี่ยนแปลง ชนิด final ได้ เนื่องจากเป็นการกำหนดค่า ท้ายสุด

  // เปลี่ยนแปลงค่า ของ  status
  // status = false; // ไม่สามารถเปลี่ยนแปลงค่าได้ เนื่องจาก const เป็นค่าตัวแปรคงที่ 

  // การ print ค่าตัวแปร ร่วมกับ String(การต่อ String)
  print("Hello $firstname");
  print("Next year my age ${age+1}");
  print("Today is ${DateTime.now()}");

  // การ convert type ของตัวแปรเป็น String 
  int dum = 100;
  // print("My dummy is "+dum); // error ไม่สามารถต่อ String รูปแบบนี้ได้
  print("My dum is "+ dum.toString()) ;

}