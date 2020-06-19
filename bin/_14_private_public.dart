// การเรียนรู้ภาษา Dart
// หัวข้อที่ 14 เรื่องการเขียน Class private and public ในภาษา Dart

void main(){

  var obj = new Woman();
  obj._privateFirld = 10;
  obj.publicFirld = 20;

  print(obj._privateFirld);
  print(obj.publicFirld);
  print(obj._privateMethod());
  print(obj.publicMethod());

}

class Woman {

  String name;
  int age;

  // private and public
  // ที่ภาษา Dart ไม่มีคีย์เวิร์ด private หรือ public
  // ที่เอาไว้กำหนด field หรือ  method นี้
  // สามารถเรียกใช้งานด้านนอกได้หรือป่าว
  // ทุกค่าจะถูกกำหนดเป็น public ยกเว้นกรณีเดียว
  // คือเราตั้งชื่อ Field หรือ Method นั้นให้ขึ้นต้นด้วย _(Underscore)

  int _privateFirld;
  int publicFirld;

  // Method
  int _privateMethod() => 0;
  int publicMethod() => 12;
  
}