void main(List<String> args) {
  String word = 'Abhinraj';
  print('the reverse of the word is : ${wordfuc(word)}');
  print(
      'the changed numbers deppend on the give value is : ${changeword(word, 2)}');
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
