void main() {
  late var result;
  int clapCount = 0;
  int roolCount = 0;
  int ahhCount = 0;

  int player1Count = 0;
  int player2Count = 0;
  int player3Count = 0;
  int player4Count = 0;

  for (int i = 1; i <= 100; i++ ) {
    if (i % 30 == 0) {
      result = "ahh";
      ahhCount++;
    } else if (i % 10 == 0) {
      result = "rool";
      roolCount++;
    } else if (i % 3 == 0) {
      result = "clap";
      clapCount++;
      if (i % 4 == 1) {
        player1Count++;
      } else if (i % 4 == 2) {
        player2Count++;
      } else if (i % 4 == 3) {
        player3Count++;
      } else {
        player4Count++;
      }
    } else {
      result = i;
    }
    print("Player ${((i - 1) % 4) + 1}: $result" );

  }
  print("\nclap의 총 갯수: $clapCount");
  print("rool의 총 갯수: $roolCount");
  print("ahh의 총 갯수: $ahhCount");

  print("\nPlayer 1: $player1Count");
  print("Player 2: $player2Count");
  print("Player 3: $player3Count");
  print("Player 4: $player4Count");

  List<int> numArray = [player1Count, player2Count, player3Count, player4Count];
  int maxValue = find_max_value(numArray);

  print("\n가장 많은 clap을 출력한 플레이어: Player $maxValue");

}

int find_max_value(List<int> numArray) {
  int max = numArray[0];
  int index = 1;
  for (int i = 0; i < numArray.length; i++) {
      if (numArray[i] > max) {
        max = numArray[i];
        index = i + 1;
      }
  }
  return index;
}
