String wor(String str) {
  if (str.isEmpty) {
    return 'str';
  }
  return wor(str.substring(1)) + str[0];
}

void main() {
  String word = 'Abhin';
  String rev = wor(word);
  print(rev);
}
