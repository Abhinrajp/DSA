class Dn {
  int? data;
  Dn? next;
  Dn? prev;
  Dn(this.data);
}

class LL {
  Dn? head = null;
  void display() {
    Dn? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }

  void insertfirst(int data) {
    Dn newnode = Dn(data);
    if (head == null) {
      head = newnode;
      return;
    }
    Dn? current = head;
    while (current!.next != null) {
      current = current.next;
    }
    current.next = newnode;
  }

  void insert(int num, int data) {
    Dn? newnode = Dn(data);
    if (head == null) {
      return;
    }
    Dn? current = head;
    while (current != null) {
      if (current.data == num) {
        newnode.next = current.next;
        newnode.prev = current;
        if (current.next != null) {
          current.next!.prev = newnode;
        }
        current.next = newnode;
        // break;
      }
      current = current.next;
    }
  }

  void insertbefore(int num, int data) {
    Dn newnode = Dn(data);
    if (head == null) {
      head = newnode;
      return;
    }
    Dn? current = head;
    while (current != null) {
      if (current.data == num) {
        newnode.next = current;
        newnode.prev = current.prev;
        if (current.prev != null) {
          current.prev!.next = newnode;
        } else {
          head = newnode;
        }
        current.prev = newnode;
        return;
      }
      current = current.next;
    }
  }
}

void main(List<String> args) {
  LL ll = LL();
  ll.insertfirst(1);
  ll.insertfirst(2);
  ll.insertfirst(3);
  ll.insertfirst(4);
  ll.insertfirst(5);
  ll.insertfirst(6);
  ll.insertfirst(7);
  ll.insertfirst(8);
  ll.display();
  print('after insert');
  ll.insert(4, 111);
  ll.display();
  print('after insert before');
  ll.insertbefore(3, 222);
  ll.display();
}
