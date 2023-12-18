class Practice3 {
  int findMax(List<int> list) {
    return list.reduce((value, element) => value > element ? value : element);
  }
}