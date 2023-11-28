void main() {
  late var result;
  int clap_count = 0;
  int rool_count = 0;
  int ahh_count = 0;

  int player1_count = 0;
  int player2_count = 0;
  int player3_count = 0;
  int player4_count = 0;

  for (int i = 1; i <= 100; i++ ) {
    if (i % 30 == 0) {
      result = "ahh";
      ahh_count++;
    } else if (i % 10 == 0) {
      result = "rool";
      rool_count++;
    } else if (i % 3 == 0) {
      result = "clap";
      clap_count++;
      if (i % 4 == 1) {
        player1_count++;
      } else if (i % 4 == 2) {
        player2_count++;
      } else if (i % 4 == 3) {
        player3_count++;
      } else {
        player4_count++;
      }
    } else {
      result = i;
    }
    print("Player ${((i - 1) % 4) + 1}: $result" );

  }
  print("\nclap의 총 갯수: $clap_count");
  print("rool의 총 갯수: $rool_count");
  print("ahh의 총 갯수: $ahh_count");

  print("\nPlayer 1: $player1_count");
  print("Player 2: $player2_count");
  print("Player 3: $player3_count");
  print("Player 4: $player4_count");

  List<int> numArray = [player1_count, player2_count, player3_count, player4_count];
  int maxValue = find_max_value(numArray);

  print("가장 많은 clap을 출력한 플레이어: Player $maxValue");

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
