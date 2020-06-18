// การเรียนรู้ภาษา Dart 
// หัวข้อที่ 4 เรื่อง Arrow Notation

/*
  Arrow คือรูปแบบการเขียน function/methond ที่มีการทำงานเพียงบรรทัดเดียวและ return ค่าเพียงอย่างเดียว
 */

// การเขียนปกติ
class TonyStark {
  bool isAlive(){
    return true;
  }
}

// ลองเขียนรูปแบบ Arrow Notation
class TonyStarkArrow {
  bool isAlive() => true;
}

void main(){
  TonyStarkArrow tonyStarkArrow = new TonyStarkArrow();
  print(tonyStarkArrow.isAlive());
}