
class Node<T>{
  T? nodeValue;  
  Node<T>? next;   

  //  tidak menggunakan 2 Default Constructor
  //  Alternatif dapat menggunakan named constructor
  // Node(){

  // }

  Node(T item) {
    nodeValue = item;
    next = null;
  }   
}

class SingleLinkedList<T>{
  /* Single Linked List*/
  Node? head;

  bool isEmpty(){
    return head == null;
  }

  
  void insertFront(T data){
    Node newNode = Node(data);
    if (isEmpty()) {
      head = newNode;
    }else{
      newNode.next = head;  
      head = newNode;
    }
  }


  void insertBack(T data){
    Node newNode = Node(data);
    if (isEmpty()) {
      head = newNode;
    }else{
      Node? temp  = head;   
      while (temp!.next != null) {    
        temp = temp.next;
      }
      temp.next = newNode;    
    }
  }


  void insertAfter(Node prevNode, T newData){
    if (prevNode == isEmpty()) {
      print('Node sebelumnya/prevNode tidak boleh null');
    }
    Node newNode = Node(newData);
    newNode.next = prevNode.next;
    prevNode.next = newNode;
  }


  void insertAfterPosition(int posisi, T newData){
    Node? bantu = head;
    for (var i = 1; i <= posisi && posisi != -1; i++) {
      if (bantu == null || bantu.next == null || bantu.next!.next == null ) {
        posisi = -1;
      }
       else if(i >= 3){
        bantu = bantu.next;
      }
    }
    if(posisi != -1){
      Node newNode = Node(newData);
      newNode.next = bantu!.next;
      bantu.next = newNode;
    } else{
      print('posisi node tidak boleh bernilai null');
    }
  }


  void deleteFront(){
    if (!isEmpty()) {
      if (head!.next != null) {
        head = head!.next;
      }else{
        head = null;
      }
    }
  }


  void deleteEnd(){
    if (!isEmpty()) {
      if (head!.next != null) {
        Node? bantu = head;
        while (bantu!.next!.next != null) {
          bantu = bantu.next;
        }
        bantu.next = null;
      }else{
        head = null;
      }
    }
  }


  void deleteMiddlePosition(int posisi){
    if (!isEmpty()) {
      Node? bantu = head;
      for (var i = 1; i <= posisi && posisi != -1; i++) {
        if (bantu!.next == null || bantu.next!.next == null) {
          posisi = -1;
        } else if(i >=3){
          bantu = bantu.next;
        }
      }
      if (posisi == 1 && bantu!.next == null) {
        head = null;
      } else if (posisi == 1 && bantu!.next != null) {
        head = head!.next;
      } else if (posisi != -1) {
        Node? hapus = bantu!.next;
        bantu.next = hapus!.next;
        hapus.next = null;
      } else{
        print('posisi Node tidak boleh bernilai null');
      }
    }
  }


  void deleteMiddle(T cari){
    if (!isEmpty()) {
      if (head!.next != null) {
        Node? bantu = head;
        while (bantu!.next!.nodeValue != cari) {
          bantu = bantu.next;
        }
        Node? hapus = bantu.next;
        bantu.next = hapus!.next;
        hapus.next = null;
      }else{
        head = null;
      }
    }
  }


  //  jika menggunakan pengecekan node yang tidak ada didalam list
  // void deleteMiddle(T cari){
  //   if (!isEmpty()) {
  //       Node? bantu = head;
  //       while (bantu!.nodeValue != cari) {
  //         if (bantu.next == null) {
  //           print('Node yang ingin  dihapus tidak ada didalam list');
  //           return;
  //         }
  //         bantu = bantu.next;
  //       }
  //       while (bantu!.next!.nodeValue != cari) {
  //         bantu = bantu.next;
  //       }
  //       Node? hapus = bantu.next;
  //       bantu.next = hapus!.next;
  //       hapus.next = null;
  //   }
  // }


  int? findNode(int data){
    if (!isEmpty()) {
      Node? bantu = head;
      while (data != bantu!.nodeValue) {
        if (bantu.next == null) {
          print('Node yang dicari tidak ditemukan');
          break;
        }
        bantu = bantu.next;
      }
      return bantu.nodeValue;
    }else{
      return null;
    }
  }


  void printList(){
    if (!isEmpty()) {
      Node? now = head;
      while (now!=null) {
        print('${now.nodeValue} ');
        now = now.next; 
      }
    }else{
      print('Linked List dalam kondisi kosong');
    }
  }
}
 
Node<String> buatLinkedList1(Node<String>? front, Node<String> p, Node<String> q ){
  p.next = q;
  front = p;
  return front;
}


