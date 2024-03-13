int binarysear(List<int> array, int knum) {
  array.sort();
  int start = 0;
  int end = array.length - 1;
  while (start <= end) {
    int mid = start + (end - start) ~/ 2;
    if (array[mid] == knum) {
      return mid;
    } else if (knum > array[mid]) {
      start = mid + 1;
    } else {
      end = mid - 1;
    }
  }
  return -1;
}

int binarysearrecu(List<int> arr, int knum, int start, int end) {
  if (start <= end) {
    int mid = start + (end - start) ~/ 2;
    if (arr[mid] == knum) {
      return mid;
    } else if (knum > arr[mid]) {
      return binarysearrecu(arr, knum, mid + 1, end);
    } else {
      return binarysearrecu(arr, knum, start, mid - 1);
    }
  }
  return -1;
}

int repeatelementbinary(List<int> arr, int knum) {
  int start = 0;
  int end = arr.length - 1;
  int result = -1;
  while (start <= end) {
    int mid = start + (end - start) ~/ 2;
    if (arr[mid] == knum) {
      result = mid;
      end = mid - 1;
    } else if (knum > arr[mid]) {
      start = mid + 1;
    } else {
      end = mid - 1;
    }
  }
  return result;
}

int fintelement(List<int> arr, int knum) {
  for (var i = 0; i < arr.length; i++) {
    if (arr[i] == knum) {
      return i;
    }
  }
  return -1;
}

int findcount(List<int> arr, int knum) {
  int count = 0;
  for (var i = 0; i < arr.length; i++) {
    if (arr[i] == knum) {
      count++;
    }
  }
  return count;
}

void main(List<String> args) {
  List<int> arr = [4, 10, 18, 18, 30, 40, 49, 5011];
  List<int> arr2 = [4, 100, 18, 56, 3, 8, 49, 11];
  print(arr);
  // int start = 0;
  // int end = arr.length - 1;
  // int index1 = binarysearrecu(arr, 49, start, end);
  // if (index1 != -1) {
  //   print("the element found at index $index1");
  // } else {
  //   print("Element not found in the list");
  // }

  // int index2 = binarysear(arr2, 18);
  // if (index2 != -1) {
  //   print("the element found at index $index2");
  // } else {
  //   print("Element not found in the list");
  // }

  // int index = repeatelementbinary(arr, 18);
  // if (index != -1) {
  //   print("First occurrence of element found at index $index");
  // } else {
  //   print("Element not found in the list");
  // }

  // int indexfind = fintelement(arr, 30);
  // if (indexfind != -1) {
  //   print("the element found at index $indexfind");
  // } else {
  //   print("Element not found in the list");
  // }
  print('count of the given number is ${findcount(arr, 18)}');
}
