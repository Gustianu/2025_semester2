import 'latihan.dart';

void main(){
  SingleLinkedList ll = SingleLinkedList();

  //  soal nomor 2
  // var p = Node<String>('red');
  // var q = Node<String>('green');

  // Node<String>? front;

  // front = buatLinkedList1(front, p,q);

  // print(front.nodeValue);
  // print(front.next!.nodeValue);


  //  soal nomor 3
  // ll.insertFront(10);
  // ll.insertFront(20);
  // ll.insertFront(30);
  // ll.insertFront(40);
  // ll.insertFront(50);
  // ll.insertFront(60);
  
  // var c = ll.findNode(20);
  // if (c == null) {
  //   print('nodedd tidak ditemukan');
  // } else{
  //   print(c);
  // }


  //  soal nomor 4
  // ll.insertFront(10);
  // ll.insertFront(20);
  // ll.insertFront(30);
  // ll.insertFront(40);
  
  // print('isi data');
  // ll.printList();

  // ll.insertAfterPosition(1, 25);
  
  // print('\nisi data');
  // ll.printList();
  

  //  soal nomor 5
  // ll.insertFront(10);
  // ll.insertFront(20);
  // ll.insertFront(30);
  // ll.insertFront(40);
  // ll.insertFront(50);
  // ll.insertFront(60);

  // print('isi data');
  // ll.printList();

  // ll.deleteMiddlePosition(6);

  // print('\nisi data');
  // ll.printList();


  print('Data');
  ll.insertFront(10);
  ll.insertFront(30);
  // ll.insertFront('Bola');

  print('Operasi Insertion Front of Linked List: ');
  ll.printList();

  // ll.insertBack(5);
  print('Operasi Insertion Back of Linked List:');
  // ll.printList();

  print('Insert After Data: ');
  // ll.insertAfter(ll.head!.next!.next!, 20);
  ll.printList();

  print('Delete data:');
  //  ll.deleteFront();
  ll.deleteEnd();
  ll.deleteMiddle(15);
  ll.printList();
}