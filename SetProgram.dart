void main() {
  Set<int> a = {16, 11, 12, 13, 14, 15};
  print(a);

  Set<int> b = {12, 18, 29, 48};
  print(b);

  Set<int> c = {2, 5, 10, 11, 32};
  print(c);

  print('union of a, b and c : ${a.union(b).union(c)}');
  print('intersection of a and b : ${a.intersection(b)}');
  print('differenceof b and c : ${b.difference(c)}');
}
