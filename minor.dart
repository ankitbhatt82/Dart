void main() {
  print("a");
  Future(() async {
    print("b");
    Future(() => print("c"));
    Future.microtask(() => print("d"));
    final val = await Future<String>.value('h');
    print(val);
    Future(() => print("e"));
    print("f");
    Future.value().then((value) => print('i'));
  });
  print("g");
}
