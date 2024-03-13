class Node {
  int? data;
  Node? next;
  Node(this.data);
}

class Linked {
  Node? head = null;
  void display() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }

  void insertend(int data) {
    Node newnode = Node(data);
    if (head == null) {
      head = newnode;
      return;
    }
    Node? current = head;
    while (current!.next != null) {
      current = current.next;
    }
    current.next = newnode;
  }

  void insertfirst(int data) {
    Node? newnode = Node(data);
    if (head == null) {
      head = newnode;
      return;
    }
    newnode.next = head;
    head = newnode;
  }

  void insertafter(int num, int data) {
    Node? newnode = Node(data);
    if (head == null) {
      return;
    }
    Node? current = head;
    while (current != null) {
      if (current.data == num) {
        newnode.next = current.next;
        current.next = newnode;
      }
      current = current.next;
    }
  }

  void insertbefore(int num, int data) {
    Node newnode = Node(data);
    if (head == null) {
      return;
    }
    if (head!.data == num) {
      newnode.next = head;
      head = newnode;
      return;
    }
    Node? current = head;
    while (current!.next != null) {
      if (current.next!.data == num) {
        newnode.next = current.next;
        current.next = newnode;
        return;
      }
      current = current.next;
    }
  }

  void delete(int data) {
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

  List<int> likedtolist() {
    List<int> arr = [];
    Node? current = head;
    while (current != null) {
      arr.add(current.data!);
      current = current.next;
    }
    return arr;
  }

  void listtolink(List<int> arr) {
    for (int data in arr) {
      insertend(data);
    }
  }

  int? midvalu() {
    Node? temp1 = head;
    Node? temp2 = head;
    while (temp2 != null && temp2.next != null) {
      temp1 = temp1!.next;
      temp2 = temp2.next!.next;
    }
    return temp1!.data;
  }
}

void main(List<String> args) {
  List<int> ary = [10, 20, 30, 40];
  Linked linkedlist = Linked();
  linkedlist.insertend(1);
  linkedlist.insertend(2);
  linkedlist.insertend(3);
  linkedlist.insertend(4);
  linkedlist.insertend(5);

  linkedlist.display();

  print('after insert first');
  linkedlist.insertfirst(111);
  linkedlist.display();

  print('after insert ');
  linkedlist.insertafter(1, 222);
  linkedlist.display();

  print('after insert before');
  linkedlist.insertbefore(2, 333);
  linkedlist.display();

  print('after delete');
  linkedlist.delete(5);
  linkedlist.display();

  print('after reverse');
  linkedlist.reverse();
  linkedlist.display();

  print('after link to array');
  List<int> array = linkedlist.likedtolist();
  print(array);

  print('after  array  to link ');
  linkedlist.listtolink(ary);
  linkedlist.display();

  print('mid value');
  int? mid = linkedlist.midvalu();
  print(mid);
}
