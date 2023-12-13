Future<String> timeoutFuture() async {
  await Future.delayed(Duration(seconds: 6));
  return 'ok';
}
void main() async {
  try {
    String result = await timeoutFuture().timeout(Duration(seconds: 5));
    print(result);
  } catch(e) {
    print('timeout');
  }
}