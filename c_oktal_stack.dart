import 'dart:io';

class Oktal{
  var oktal = [];
  int j = 0;

  Oktal(int nilai) {
  for (; nilai > 0;) {
    j = nilai %8;
    nilai = nilai ~/8;
    oktal.add(j); 
    }
  }

  void cetak(){
  stdout.write('Ini Merupakan Bilangan Oktal       : ');
  print('${oktal.reversed.join()} \n');
  }
} 
