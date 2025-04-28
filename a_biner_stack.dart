import 'dart:io';

class Biner{
  var biner = [];
  int j =0;

  Biner (int nilai){
 for (; nilai > 0;) {
  j = nilai %2;
  nilai = nilai ~/2;
  biner.add(j); 
    }
  }

  void cetak(){
    stdout.write('ini merupakan bilangan biner       : ');
    print(biner.reversed.join()); 
  }
}
