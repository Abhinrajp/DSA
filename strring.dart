void main(List<String> args) {
  String word = 'AbHinRaj';
  String str1 = 'hello';
  String str2 = 'its me your';
  print(word);
  print('the reverse of the word is : ${wordfuc(word)}');
  print(
      'the changed numbers deppend on the give value is : ${changeword(word, 2)}');
  concat(str1, word);
  substr(word);
  replace(str2);
  upperandlower(word);
}

String wordfuc(String word) =>
    word.isEmpty ? word : wordfuc(word.substring(1)) + word[0];

String changeword(String strg, int val) {
  String result = '';

  int newvalu = val % 26;
  for (var i = 0; i < strg.length; i++) {
    int letterpos = strg.codeUnitAt(i) + newvalu;
    if (letterpos <= 122) {
      result += String.fromCharCode(letterpos);
    } else {
      result += String.fromCharCode(96 + letterpos % 122);
    }
  }
  return result;
}

void concat(String str1, String str2) {
  String result = str1 + str2;
  print(result);
}

void substr(String str) {
  String result = str.substring(0, 5);
  print(result);
}

void replace(String str) {
  String result = str.replaceAll('your', 'friend');
  print(result);
}

void upperandlower(String str) {
  String upp = str.toUpperCase();
  String lowe = str.toLowerCase();
  print(upp);
  print(lowe);
}
