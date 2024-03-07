class DoubleNode {
  int? data;
  DoubleNode? next;
  DoubleNode? prev;
  DoubleNode(this.data);
}

class Doublelink {
  DoubleNode? head = null;

  void display() {
    DoubleNode? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }

  void insertend(int data) {
    DoubleNode? newnode = DoubleNode(data);
    if (head == null) {
      head = newnode;
      return;
    }
    DoubleNode? current = head;
    while (current!.next != null) {
      current = current.next;
    }
    current.next = newnode;
    newnode.prev = current;
  }

  void insertfirst(int data) {
    DoubleNode? newnode = DoubleNode(data);
    if (head == null) {
      head = newnode;
      return;
    }
    DoubleNode? current = head;
    newnode.next = current;
    if (current != null) {
      current.prev = newnode;
    }
    head = newnode;
  }

  void insertafter(int num, int data) {
    DoubleNode? newnode = DoubleNode(data);
    if (head == null) {
      return;
    }
    DoubleNode? current = head;
    while (current != null) {
      if (current.data == num) {
        newnode.next = current.next;
        newnode.prev = current;
        if (current.next != null) {
          current.next!.prev = newnode;
        }
        current.next = newnode;
      }
      current = current.next;
    }
  }

  void insertbefore(int num, int data) {
    DoubleNode? newnodde = DoubleNode(data);
    if (head == null) {
      return;
    }
    DoubleNode? current = head;
    while (current != null) {
      if (current.data == num) {
        newnodde.next = current;
        newnodde.prev = current.prev;
        if (current.prev != null) {
          current.prev!.next = newnodde;
        } else {
          head = newnodde;
        }
        current.prev = newnodde;
        return;
      }
      current = current.next;
    }
  }

  void delete(int data) {
    DoubleNode? current = head;
    while (current != null) {
      if (current.data == data) {
        if (current == head) {
          head = current.next;
          if (head != null) {
            head!.prev = null;
          }
        } else {
          if (current.next != null) {
            current.next!.prev = current.prev;
          }
          if (current.prev != null) {
            current.prev!.next = current.next;
          }
        }
      }
      current = current.next;
    }
  }

  void reverse() {
    DoubleNode? current = head;
    DoubleNode? temp;

    while (current != null) {
      temp = current.prev;
      current.prev = current.next;
      current.next = temp;
      current = current.prev;
    }

    if (temp != null) {
      head = temp.prev;
    }
  }
}

void main() {
  Doublelink dl = Doublelink();
  dl.insertend(1);
  dl.insertend(2);
  dl.insertend(3);
  dl.insertend(4);
  dl.insertend(5);
  dl.display();

  print('after insert first');
  dl.insertfirst(999);
  dl.display();

  print(' insert after');
  dl.insertafter(3, 666);
  dl.display();

  print(' insert before');
  dl.insertbefore(2, 888);
  dl.display();

  print(' after delete');
  dl.delete(5);
  dl.display();

  print(' after reverse');
  dl.reverse();
  dl.display();
}
