import 'dart:io';

class Hexadecimal{
  var hexadesimal = [];
  int j = 0 ;

  Hexadecimal(int nilai){
  for (; nilai > 0;) {
    j = nilai %16;
    if (j < 10) {
      nilai = nilai ~/16;
      hexadesimal.add(j);
    } else{
        if (j == 10) {
          hexadesimal.add('A');
        }  else if(j == 11){
          hexadesimal.add('B');
        } else if(j == 12){
          hexadesimal.add('C');
        } else if(j == 13){
          hexadesimal.add('D');
        } else if(j == 14){
          hexadesimal.add('E');
        } else if(j == 15){
          hexadesimal.add('F');
        }
    nilai = nilai ~/16;
      }
    }
  }

  void cetak(){
  stdout.write('Ini Merupakan Bilangan Hexadecimal : ');
  print(hexadesimal.reversed.join());
  }

}
