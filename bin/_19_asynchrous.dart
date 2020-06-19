void main(){

  print('Start');

  // logic การทำงานที่มีระยะเวลายาวนาน
  // โปรแกรมปกติ ที่เป็น Synchronous
  //var f = Future.value(100);
  // f.then((value) => null);
  // f.then((value){
  //   print(value);
  // });

  // หน่วงเวลา
  var f = Future.delayed(Duration(seconds: 5),(){
    return 100;
  });

  f.then((value){
    print(value);
  });

  print('End');

}