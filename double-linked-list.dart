class DNode {
  int? data;
  DNode? next;
  DNode? prev;
  DNode(this.data);
}

class DoubleLinklist {
  DNode? head = null;
  void display() {
    if (head == null) {
      return;
    }
    DNode? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }

  void dInsertFi(int data) {
    DNode newnode = DNode(data);
    if (head == null) {
      head = newnode;
      return;
    }
    DNode? current = head;
    while (current!.next != null) {
      current = current.next;
    }
    current.next = newnode;
    newnode.prev = current;
  }

  void dInsert(int num, int data) {
    DNode newnode = DNode(data);
    if (head == null) {
      return;
    }
    DNode? current = head;
    while (current != null) {
      if (current.data == num) {
        newnode.next = current.next;
        newnode.prev = current;
        if (current.next != null) {
          current.next!.prev = newnode;
        }
        current.next = newnode;
        break;
      }

      current = current.next;
    }
  }

  void insertend(int data) {
    DNode newnode = DNode(data);
    if (head == null) {
      head = newnode;
      return;
    }
    DNode? current = head;
    while (current!.next != null) {
      current = current.next;
    }
    current.next = newnode;
    newnode.prev = current;
  }

  void delete(int data) {
    DNode? current = head;
    while (current != null) {
      if (current.data == data) {
        if (current == head) {
          head = current.next;
          if (head != null) {
            head!.prev = null;
          }
        } else {
          current.prev!.next = current.next;
          if (current.next != null) {
            current.next!.prev = current.prev;
          }
        }
        return;
      }
      current = current.next;
    }
  }

  void reverse() {
    DNode? temp = null;
    DNode? current = head;
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

  void beforeinsert(int num, int data) {
    DNode? newnode = DNode(data);
    if (head == null) {
      head = newnode;
      return;
    }
    DNode? current = head;
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

  void middle() {
    DNode? temp1 = head;
    DNode? temp2 = head;
    while (temp2 != null && temp2.next != null) {
      temp1 = temp1!.next;
      temp2 = temp2.next!.next;
    }
    print(temp1!.data);
  }

  List<int> tolist() {
    List<int> arr = [];
    DNode? current = head;

    while (current != null) {
      arr.add(current.data!);
      current = current.next;
    }
    return arr;
  }

  void toliinkid(List<int> arr) {
    for (int data in arr) {
      dInsertFi(data);
    }
  }
}

void main() {
  DoubleLinklist dlink = DoubleLinklist();
  List<int> arr = [
    1,
    2,
    3,
  ];
  dlink.dInsertFi(100);
  dlink.dInsertFi(200);
  dlink.dInsertFi(300);
  dlink.dInsertFi(400);
  dlink.dInsertFi(500);
  dlink.dInsertFi(600);
  dlink.dInsertFi(700);
  dlink.dInsertFi(800);
  dlink.display();
  print('aftter insert');
  dlink.dInsert(600, 111);
  dlink.display();
  print('aftter insert end');
  dlink.insertend(900);
  dlink.display();
  print('aftter delete');
  dlink.delete(100);
  dlink.display();
  // print('aftter reverse');
  // dlink.reverse();
  // dlink.display();
  print('aftter insert before');
  dlink.beforeinsert(500, 555);
  dlink.display();
  print('middle vallue');
  dlink.middle();
  print('list of linedlist');
  List<int> linkarr = dlink.tolist();
  print(linkarr);
  print('list to linkedddd');
  dlink.toliinkid(arr);
  dlink.display();
}
