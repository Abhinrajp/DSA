void main() {
  Linkedlist linkedlist = Linkedlist();
  linkedlist.displayList();
  linkedlist.insertFirst(10);
  linkedlist.insertFirst(20);
  linkedlist.insertFirst(30);
  linkedlist.insertFirst(40);
  linkedlist.displayList();
  print('after delete');
  linkedlist.delete(100);
  linkedlist.displayList();
  print('after end');
  linkedlist.insertEnd(60);
  linkedlist.displayList();
  print('after inserrt');
  linkedlist.insert(100, 80);
  linkedlist.displayList();
  print('after reverse');
  linkedlist.reverse();
  linkedlist.displayList();
}

class Node {
  dynamic data;
  Node? next;
  Node(this.data);
}

class Linkedlist {
  Node? head = null;

  void insertFirst(dynamic data) {
    Node newNode = Node(data);
    newNode.next = head;
    head = newNode;
  }

  void insertEnd(dynamic data) {
    Node newNode = Node(data);
    Node? current = head;
    if (head == null) {
      head = newNode;
      return;
    }

    while (current!.next != null) {
      current = current.next;
    }
    current.next = newNode;
  }

  void insert(dynamic nextno, dynamic data) {
    Node newnode = Node(data);

    if (head == null) {
      return;
    }
    Node? current = head;
    while (current != null) {
      if (current.data == nextno) {
        newnode.next = current.next;
        current.next = newnode;
        break;
      }
      current = current.next;
    }
  }

  void displayList() {
    if (head == null) {
      print('empty');
    }
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }

  void delete(dynamic data) {
    Node? current = head, prev = null;
    if (current != null && current.data == data) {
      head = current.next;
      return;
    }
    while (current != null && current.data != data) {
      prev = current;
      current = current.next;
    }
    if (current == null) {
      return;
    }
    if (current.data == data) {
      prev!.next = current.next;
    }
    prev = current;
    current = current.next;
  }

  void reverse() {
    Node? current = head, prev = null, next;

    while (current != null) {
      next = current.next;
      current.next = prev;
      prev = current;
      current = next;
    }
    head = prev;
  }
}
