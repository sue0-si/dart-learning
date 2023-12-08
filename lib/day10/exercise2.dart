class Word {
  String word = '';

  bool isVowel(int i) {
    String letter = word.substring(i, i + 1);
    List<String> vowels = ['a', 'e', 'i', 'o', 'u'];
    List<String> vowelUpper = ['A', 'E', 'I', 'O', 'U'];

    if (vowels.contains(letter)) {
      return true;
    } else if (vowelUpper.contains(letter)) {
      return true;
    }
    return false;
  }

  Word({
    required this.word,
  });
}

void main() {
  Word word = Word(word: 'applE');
  print(word.isVowel(4));
}