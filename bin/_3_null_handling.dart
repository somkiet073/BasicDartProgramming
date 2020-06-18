// การเรียนรู้ภาษา Dart 
// หัวข้อที่ 3 เรื่อง Null Handling
/*
  ปกติตัวแปรภาษา Dart เป็นแบบ referrence ดังนั้นเลยสามารถเป็นค่า null  ได้ทุกตัว
  ภาษา dart เลยมี operation สำหรับจัดการกับค่า null มาให้ใช้งาน
 */

class People {
  void SayHi(){
    print("Hi");
    //return null;
  }
}

void main(){
  // เครื่องหมาย ?? 
  // ไว้ใช้สำหรับเช็คค่าตัวแปรเป็น null ให้ใช้ค่าเริ่มต้นที่เรากำหนดเองได้

  String name;
  // ?? มีชื่อเรียกว่า Null Coalescing operator
  // ?? ใช้ตรวจค่า null ในจังหวะการนำไปใช้งาน ไม่สามารถใส่ไว้หลังการประกาศตัวแปรได้
  print(name ??"No defind name");

  // เครื่องหมาย ?
  // ? มีชื่อเรียกว่า Null Conditaional
  // เอาไว้ใช้เช็คกับ class ว่า object นั้นเป็นค่า null หรือไม่ ?
  People people = new People();
  people?.SayHi(); //ถ้า People เป็น Object ที่ไม่ null ก็จะ print("Hi")
                   // แต่ถ้า people เป็นค่า null คำสั่งนี้จะไม่ทำงาน
  
  // เครื่องหมาย ??=
  // ??= มีชื่อเรียกว่า Null Coalescing assignment operator
  String myName;
  myName ??= "Somkiet";
  print(myName);
}
