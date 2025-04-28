import 'dart:io';
import 'package:test/test.dart';
import 'class_latihan.dart';

void main(){
  Antrian objek = Antrian();
  int j = 1;
  objek.queueOperation(20);
  for (var i; i != isFalse;) {
    print('Program Antrian Loket bank');
    print('Pilih salah satu menu dibawah');
    print('No 1. Menambahkan antrian');
    print('No 2. Mengurangi antrian');
    print('No 3. Menampilkan isi antrian');
    print('No 4. Keluar');

    stdout.write('Masukkan Nomer : ');
    var menu = int.tryParse(stdin.readLineSync()!);

    if (menu == 1) {
      var isi = 'Antrian ke-$j';
      print(objek.enqueue(isi)); 
      j++;

    } else if(menu == 2){
      print(objek.dequeue());

    }else if(menu == 3){
      objek.cetak();

    }else if(menu == 4){
      i = isFalse;

    }else{
      print('Tolong Masukkan input yang benar');
    }
  }
}
