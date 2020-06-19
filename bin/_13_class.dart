// การเรียนรู้ภาษา Dart
// หัวข้อที่ 13 เรื่องการเขียน Class ในภาษา Dart

void main(){

  Woman woman = new Woman('somsri', 27);
  Woman woman2 = new Woman('siri', 28);
  Woman woman3 = new Woman();
  woman3.fname = 'siriwan';
  print(woman3.fname);

  woman.sayhello();
  woman2.sayhello();
  woman3.sayhello();

}


class Woman {

  // Properties, Atribute
  String name; // การเติม _ (under) ด้านหน้าตัวแปร หรือ function นั้นจะเป็น private
  int age;

  // Constructor เขียนแบบเก่า
  // Woman(String name,int age){
  //   this.name = name;
  //   this.age = age;
  // }

  // Constructor ลดรูป รูปแบบการเขียนแบบ Dart
  Woman([this.name, this.age]);

  // Getter and Setter
  // Setter
  set fname(String name) => this.name=name;

  // Getter
  get fname => name;


  void sayhello(){
    print("Hello, My name is ${name} ");
  }

}

