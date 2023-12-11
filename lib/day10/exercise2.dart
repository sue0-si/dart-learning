class Word {
  String _word = '';

  // i 번째 글자가 모음인지 알려주는 isVowel() 함수
  bool isVowel(int i) {
    if (i < 0 || i >= _word.length) {
      return false;
    }

    String letter = _word.substring(i, i + 1);
    List<String> vowels = ['a', 'e', 'i', 'o', 'u'];
    List<String> vowelUpper = ['A', 'E', 'I', 'O', 'U'];

    if (vowels.contains(letter)) {
      return true;
    } else if (vowelUpper.contains(letter)) {
      return true;
    }
    return false;
  }

  // i 번째 글자가 자음인지 알려주는 isConsonant() 함수
  bool isConsonant(int i) {
    return !isVowel(i);
  }

  Word({
    required String word,
  }): _word = word;
}

void main() {
  Word word = Word(word: 'applE');
  print(word.isVowel(4));
  print(word.isConsonant(4));
}