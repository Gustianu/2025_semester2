import 'dart:io';

class Antrian {
 int front = 0, rear = 0, size = 0;
 int capacity = 0;
 List<String> array = [];     

 void queueOperation(int capacity){
  this.capacity = capacity;
  front = size = 0;
  rear = capacity -1;
  array = List<String>.filled(capacity, '0');   
 }

 bool isFull(){
  return(size == capacity);
 }

 bool isEmpty(){
  return(size==0);
 }

  String enqueue(String item){     
  if (isFull()) return 'Antrian Penuh';
  rear = (rear + 1) % capacity;
  array[rear] = item;
  size++;
  return 'menambahkan $item pada daftar urutan\n';
 }

 String dequeue(){      
  if (isEmpty()) return 'daftar antrian kosong';     
  String item = array[front];     
  front = (front + 1) % capacity;
  size--;
  stdout.write('mengurangi antrian pada ');
  return item;
 }

 String frontElement(){       
  if(isEmpty()) return 'elemen kosong';    
  return array[front];
 }

 String rearElement(){      
  if(isEmpty()) return 'elemen kosong';    
  return array[rear];
 }

void cetak() {
  print('Menampilkan isi antrian:');
  if (isEmpty()) {
    print('Antrian kosong.');
    return;
  }
  int index = front;
  for (int i = 0; i < size; i++) {
    print(array[index]);
    index = (index + 1) % capacity;
  }
}
}