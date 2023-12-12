void main() {
  List<int> list = [1, 2, 3, 4, 5];
  
  list.forEach((element) { 
    print(list);
  });
  
  final Iterable<int> filteredList = list.where((element) => element.isEven);

  list.where((element) => element.isEven)
      .map((e) =>  '$e 번째')
      .toList();

  
}