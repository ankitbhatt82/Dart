//advance datatype in dart
//1. list 2. set 3.map
void main() {
  //list creation

  print('==================LIST DEMO======================');
  List<int> list = [10, 20, 30, 40, 50];
  print(list.runtimeType);
  print('no. of element in the list : ${list.length}');
  print('element in 3rd index : ${list[3]}');
  print('element in 4th index : ${list[4]}');
  print('element in 3rd index : ${list.elementAt(3)}');
  list.add(60);
  list.addAll([70, 80, 90, 100]);
  print(list);
  List<int> list2 = [110, 130, 120, 140];
  list.addAll(list2);
  print(list);
  print('first element in this list is: ${list.first}');
  print('last element in this list is: ${list.last}');
  print(
      'index positon of last element in this list is: ${list.lastIndexOf(140)}');
  print('check the list is empty or not: ${list.isEmpty}');
  print('check the list is empty or not: ${list.isNotEmpty}');
  print('reversed list is: ${list.reversed}');
  print(
      'check the element 100 is contained by list or not: ${list.contains(100)}');

  list.remove(50);
  print('updated list is: ${list}');
  list.removeAt(8);
  print('updated list again: ${list}');

  list.sort();
  print('sorted list is: ${list}');

  print('============== SET DEMO =================');
  Set<int> set1 = <int>{10, 20, 30, 40, 50};
  print(set1);
  Set<int> set2 = <int>{50, 60, 70, 80, 90};
  print(set2);
  print('union of set1 and set2 : ${set1.union(set2)}');
  print('intersection of set 1 and set2 : ${set1.intersection(set2)}');
  print('difference of set1 and set2 : ${set1.difference(set2)}');
  print('converting set1 into list : ${set1.toList()}');
}
