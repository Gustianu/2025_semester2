import 'latihan.dart';

void main(){
  var dll = DoubleLinkedList();

  dll.append(10);
  dll.insertBeforeHead(20);
  dll.insertBeforeHead(30);
  dll.insertBeforeHead(40);
  dll.insertBeforeHead(50);
  dll.insertTailNode(50);
  
  dll.tambahNodeSebelum(90, 20);

  dll.deleteEnd();
  dll.deleteFront();

  dll.tambahNodeSebelumBacaMundur(15, 30);
  dll.printList(dll.head);
}
