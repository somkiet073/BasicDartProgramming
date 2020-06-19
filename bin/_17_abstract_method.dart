void main(){

  var rectangle = Rectangle();
  rectangle.draw();
  rectangle.line();
  rectangle.myNormalFunction(); 

}

abstract class Shape {

  int x;
  int y;

  void draw(); // Abstract Method
  void line(); // Abstract Method

  void myNormalFunction(){
    print('Hello Something.');
  }

}

class Rectangle extends Shape {

  void draw(){
    print('Drawing Rectangle...');
  }

  void line(){
    print('Line Rectangle...');
  }
  
}
