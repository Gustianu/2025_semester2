import 'dart:io';

import 'package:stack/stack.dart';
import 'package:test/test.dart';
import 'a_biner.dart';
import 'b_hexadecimal.dart';
import 'c_oktal.dart';
import 'd_palindrom.dart';
void main() {
  var stack = Stack();
  int? menu;
  var nilai;
  for (var i; i != isFalse;) {
    print('------------------  Program dart  ------------------');
    print('Silahkan pilih salah satu dari menu program dibawah:');
    print('No 1. Konvert ke biner, hexadesimal, oktal');
    print('No 2. Pengecekan kalimat palindrom atau bukan ');
    print('No 3. Keluar' );
    stdout.write('Masukkan nomer :');
    menu = int.tryParse(stdin.readLineSync()!);
    print('');

    if (menu == 1) {
      stdout.write('Masukkan nomer yang akan dikonversi : ');
      nilai = int.tryParse(stdin.readLineSync()!);
      if (nilai == String) {
        print('Tolong masukkan input yang benar');
      } else{
        stack.push(nilai);

        Biner value1 = Biner(stack.top());
        Hexadecimal value2 = Hexadecimal(stack.top());
        Oktal value3 = Oktal(stack.top());

        value1.cetak();
        value2.cetak();
        value3.cetak();
      }
    } else if(menu == 2){
      stdout.write('Masukkan Kalimat yang akan dicek : ');
      nilai = stdin.readLineSync();
      if (RegExp(r'\d').hasMatch(nilai) == true) {
        print('Tolong masukkan input yang benar!!!\n');
      } else{
        stack.push(nilai);

        Palindrom value4 = Palindrom(stack.top());
        print(value4.cek());
      }
    } else if(menu == 3){
      print('Terima kasih telah menggunakan program saya');
      i = isFalse; 

    } else{
      print('Tolong masukkan input yang benar!!');
    }
  }
}
