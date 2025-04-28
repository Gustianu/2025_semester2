import 'dart:io';

class Palindrom{
var kal = [];
int j = 0; 
String kalimat;
 
 Palindrom (this.kalimat){
    kal.add(kalimat.split('').reversed.join());
}

String cek(){
  stdout.write('Hasil : ');
  print(kal.join());
    if (kal.join() == kalimat) {
      return 'Kalimat ini merupakan palindrom \n';
    } else{
      return 'Kalimat ini bukan palindrom \n';
    }
  }
}