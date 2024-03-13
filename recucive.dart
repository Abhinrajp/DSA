import 'Data-structure.dart';

recurs(int val) {
  if (val == 0 || val == 1) {
    return 1;
  }
  num? fact = val * recurs(val - 1);
  return fact;
}

sumf(int val) {
  if (val == 0 || val == 1) {
    return 1;
  }
  num? fact = val + sumf(val - 1);
  return fact;
}

mulf(int val) {
  if (val == 0 || val == 1) {
    return 1;
  }
  num? fact = val / sumf(val - 1);
  print(fact);
}

bool palindrome(String str) {
  if (str.length <= 1) {
    return true;
  } else {
    if (str[0] != str[str.length - 1]) {
      return false;
    }
    return palindrome(str.substring(1, str.length - 1));
  }
}

void main() {
  // print('the factorial of the given numer is ${recurs(4)}');
  // print('the factorial add of the given numer is ${sumf(4)}');
  // print('the factorial div of the given numer is ${mulf(10)}');
  String str = 'radar';
  print(str);
  print('the enterd word is ${palindrome(str)} paliandrome');
}
