void main() {
  // sum

  List<int> arr = [1, 2, 3, 4, 7];
  print(arr);
  List<int> result = sum(arr, 10);
  print(result);

// move to  end.

  List<int> array = [
    1,
    2,
    3,
    4,
    2,
    6,
    2,
    8,
    2,
    3,
    2,
  ];

  List<int> res = movenumber(array, 2);
  print(res);

  // find number.

  findnum(array, 20);
}

//find the sum of numbers that gives the target.

List<int> sum(List<int> arr, int target) {
  List<int> result = [];
  for (var i = 0; i < arr.length; i++) {
    for (var j = i + 1; j < arr.length; j++) {
      if (arr[i] + arr[j] == target) {
        result.addAll([arr[i], arr[j]]);
      }
    }
  }
  return result;
}

//move the number the given to the eend of the list.

List<int> movenumber(List<int> array, int num) {
  int left = 0;

  for (int i = 0; i < array.length; i++) {
    if (array[i] != num) {
      int temp = array[left];
      array[left] = array[i];
      array[i] = temp;
      left++;
    }
  }

  return array;
}

findnum(List<int> array, int num) {
  if (array.contains(num)) {
    print('yes');
  } else {
    print('No');
  }
}
