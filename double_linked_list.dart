import 'dart:io';

class Dnode<T> {
  T? nodeValue;  //  nilai dari node/penyimpanan node
  Dnode<T>? prev;  //  node sebelumnya dalam list
  Dnode<T>? next;  //  node selanjutnya dalam list

  Dnode(T item ){
    nodeValue = item;
    next = null;
    prev = null;
  }

}

class DoubleLinkedList<T> {
  Dnode? head, tail;

  bool isEmpty(){
    return head == null;
  }

  //  menambahkan node baru/membuat node
  void append(dynamic data){
    Dnode newNode = Dnode(data);
    if (isEmpty()) {
      head = newNode;
      tail = newNode;
      newNode.next = null;
      newNode.prev = null;
    } else{
      print('data sudah ada pada linked list');
    }
  }

  //  menambahkan data sebelum head / menambahkan data dari depan(menjadi head baru)
  void insertBeforeHead(dynamic data){
    Dnode newNode = Dnode(data);
    if (isEmpty()) {
      append(data);
    } else{
      newNode.next = head;
      head!.prev = newNode;
      head = newNode;
      //  menentukan node terakhir
      Dnode? bantu = head;
      while (bantu!.next != null) {
        bantu = bantu.next;
      }
      tail = bantu;
      // tail!.next = null;
    }
  }

  //  menambahkan data baru atau di akhir node
  // void insertTailNode(dynamic data){
  //   Dnode newNode = Dnode(data);
  //   if (isEmpty()) {
  //     append(data);
  //   } else{
  //     Dnode? temp = head;
  //     while (temp!.next != null) {
  //       temp = temp.next;
  //     }
  //     temp.next = newNode;
  //     newNode.prev = temp;
  //   }
  // }
 
 
  //  menggunakan tail
  void insertTailNode(dynamic data){
    Dnode newNode = Dnode(data);
    if (isEmpty()) {
      append(data);
    } else{
      tail!.next = newNode;
      newNode.prev = tail;
      tail = newNode; 
    }
  }


  //  jika menggunakan tail
  void insertCustom(Dnode temp, dynamic data){
  if (temp == isEmpty()) {
    print('Node tidak ditemukan');
    return;
  }
    Dnode newNode = Dnode(data);
    if (temp.next != null) {
      newNode.next = temp.next;
      newNode.prev = temp;
      temp.next!.prev = newNode;

      temp.next = newNode;
    } else{
      insertTailNode(data);
    }
  }


  void tambahNodeSebelum(dynamic newValue, T target){
    if (isEmpty()) {
      print('Tidak ada node didalam list');
      return;
    }
    Dnode? bantu = head;
    while (bantu!.nodeValue != target ) {
      if (bantu == tail) {
        if (bantu != target) {
          print('Node sebelumnya tidak ada didalam list');
          return;
        }
      } 
      bantu = bantu.next; 
    } 
    while (bantu!.nodeValue != target) {
      bantu = bantu.next;
    }
    Dnode newNode = Dnode(newValue);
    if (bantu.next != null) {
      newNode.next = bantu.next;
      newNode.prev = bantu;
      bantu.next!.prev = newNode;

      bantu.next = newNode;
    } else{
      insertTailNode(newValue);
    }
  }

  void tambahNodeSebelumBacaMundur(dynamic newValue, T target){
    if (isEmpty()) {
      print('tidak ada node didalam list');
      return;
    }
    Dnode? bantu = tail;
    while (bantu!.nodeValue != target) {
      if (bantu.prev == null) {
        print('Node sebelum tidak ada didalam list');
        return;
      }
        bantu = bantu.prev;
    } 
    while (bantu!.nodeValue != target) {
      bantu = bantu.prev;
    }
    Dnode newNode = Dnode(newValue);
    if (bantu.next != null) {
      newNode.next = bantu.next;
      newNode.prev = bantu;
      bantu.next!.prev = newNode;

      bantu.next = newNode;
    } else{
      insertTailNode(newValue);
    }
  }


  void deleteFront(){
    if (!isEmpty()) {
      if (head!.next != null) {
        Dnode? delete = head;
        head = head!.next;
        head!.prev = null;
        delete!.next = null;
      } else{
        head = null;
      }
    }
  }

  void deleteEnd(){
    if (!isEmpty()) {
      if (head!.next != null) {
        Dnode? bantu = tail;
        bantu = tail!.prev;
        bantu!.next = tail;
        tail = bantu;
        tail!.next = null;
      } else{
        head = null;
      }
    }
  }

  void printList(Dnode? node){
    Dnode? tail;
    tail = null;
    print('Traversal in forward driection: ');
    while (node != null) {
      stdout.write('${node.nodeValue} ');
      tail = node;
      node = node.next;
    }
    print('');
    print('traversal in reverse direction: ');
    while (tail != null) {
      stdout.write('${tail.nodeValue} ');
      tail = tail.prev;
    }
    print('');
  }
}
