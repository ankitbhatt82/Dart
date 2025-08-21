void main() {
  List<int> list1 = [10, 22, 23, 77, 22, 89, 45, 10, 67, 45];
  print(list1);
  print('converting list1 into set: ${list1.toSet()}');
  print(
      'the new list which do not contains duplicate elements : ${list1.toSet().toList()}');
}
