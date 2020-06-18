// การเรียนรู้ภาษา Dart 
// หัวข้อที่ 12 เรื่อง Data Structure: Map

// Map เป็น Data Structor เก็บข้อมูลแบบ Key-value
// คล้ายกับ List ที่กำหนดชื่อของ index

void main (){

  Map data = {'id':1, 'name':'test'};

  print(data['id']);
  print(data['name']);

  // การสร้าง Map แบบกำหนดชนิดข้อมูล
  Map<String, int> score = {'A':100, 'B':200};
  print(score);

  // เพิ่มหรือลบ item ออกจาก Map
  Map<String, int> product = {'A':100};
  product['B'] = 200;
  print(product);

  // ส่วนของการลบข้อมูลเราจะใช้คำสั่ง remove 
  Map<String, int> product2 = {'A':100};
  product2['B'] = 200;
  product2.remove('A');
  print(product2);

  // การ loop สมาชิคของ Map
  for (var items in product.entries) {  // .entries คือการดึงข้อมูลทั้ง key และ value มาแสดง
    print("${items.key} ${items.value}");
  }

}