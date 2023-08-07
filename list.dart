void main() {
  List shopping_list = ['fruit', "vages", "bread", "milk bottle"];

  print(shopping_list);
  int count = 1;
  for (var item in shopping_list) {
    print(item);
    count++;
  }
  print("count = $count");
}
