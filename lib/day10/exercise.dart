class StrongBox<E> {
  E? _money;

  void put(E money) {
    _money = money;
  }
  E? get() {
    return _money;
  }

}
