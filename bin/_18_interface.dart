void main(){
  var tv = Television();
  tv.volumnUp();
  tv.volumnDown();
  tv.justAnotherClass();
}

class Remote {
  void volumnUp(){
    print('____Volumn up____');
  }

  void volumnDown(){
    print('____Volumn down____');
  }

}

class AnotherClass {
  void justAnotherClass(){}
}

class Television implements Remote, AnotherClass {
   void volumnUp(){
    print('____Volumn up TV ____');
  }

  void volumnDown(){
    print('____Volumn down TV ____');
  }

  void justAnotherClass(){
    print('Another TV');
  }

}