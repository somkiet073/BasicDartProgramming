// การเรียนรู้ภาษา Dart 
// หัวข้อที่ 11 เรื่องการทำงานกับข้อมูลแบบ list

void main() {
  // List ใน Dart ไม่ใช้โครงสร้างแบบ fixd-length
  // สามารถเพิ่มสมาชิก หรือ ลบ List ได้ ใช้ add(), remove,removeAt()

  List myList = [10, 20, 30, 40, 50]; // การสร้าง list แบบนี้ไม่แนะนำ เพราะไม่มีการระบุ type
  print(myList);

  print(myList[0]);
  print(myList[4]);

  // การสร้าง list แบบระบุ type
  List<int> myList2 = [20,30,40];
  print(myList2);
  
  // หรือกำหนด list แบบด้านล่างก็จะได้ผลลัพเท่ากันกับการประกาศด้านบน
  var myList3 = <int>[50,60,70,80];
  print(myList3);

  // List แบบจำกัดจำนวนสมาชิก
  List<String> fixList = List<String>(4);
  //การเพิ่มสมาชิก fixList
  fixList[0]='One';
  fixList[1]='Two';
  fixList[2]='Three';
  fixList[3]='Four';
  // fixList.add('xx'); // UnsupportedError (Unsupported operation: Cannot add to a fixed-length list)
  print(fixList);

  // Growth List
  // คือ List ที่จะเพิ่มสมาชิคได้ไม่จำกัด
  List<int> growList = List<int>();
  growList.add(12);
  growList.add(24);
  growList.add(36);
  print(growList);

  //นับจำนวนสมาชิก List
  print(growList.length);

  // การสร้าง List ที่มีหลาย type ได้หลายชนิด
  var multiType = List();
  multiType.add('name');
  multiType.add(2);
  multiType.add(3.14);
  multiType.add(true);
  multiType.add(null);

  print(multiType);
  print("Count multiType => " + multiType.length.toString());

  // List แบบ Dynamic จะเป็น List แบบ growth
  List<dynamic> person = ['xx',2,true,null,12.3];
  // person[5] = 'Hellos'; //RangeError (RangeError (index): Invalid value: Not in inclusive range 0..4: 5)
  person.add('Hello');
  print(person);

  // การ Loop ข้อมูลสมาชิคของ  List ออกมา
  // วิธีที่ 1
  for (var i = 0; i < myList.length; i++) {
    print(myList[i]);
  }

  print('=====================================');

  for (var mylist in growList) {
    print(mylist);
  }

  var list = ['A', 'B', 'C'];
  list.add('D'); // คำสั่ง add จะแทรกข้อมูลไว้ท้ายสุด 
  list.insert(0, 'Z'); // คำสั่ง insert จะเป็นการระบุตำแหน่งข้อมูลที่จะ add เข้า list ได้
  print(list);

  print('===== Remove =====');
  List<String>alist;

  alist = ['A','B','C','D','E'];
  alist.remove('A');  // remove แบบระบุ data
  print(alist);

  alist = ['A','B','C','D','E'];
  alist.removeAt(2);  // remove แบบระบุตำแหน่ง
  print(alist);

  alist = ['A','B','C','D','E'];
  alist.removeRange(1, 3); // remove แบบช่วง
  print(alist);

  print('========== การรวม List ===========');

  // การรวมสมาชิคของ list ด้วย Spread Operator
  var list1 = [1, 2, 3];
  var list2 = [...list1, 4, 5, 6];
  print(list2);

  var list3 = [1,2,3,4];
  var list4 = [0, ...?list3, 5];
  print(list4);

}