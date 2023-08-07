void main() {
  List<int> l1 = [12, 44, 6, 7, 8, 2];

  print(l1);

  l1.add(1001);
  l1.add(1002);

  for (var i in l1) {
    print(i);
  }
}
