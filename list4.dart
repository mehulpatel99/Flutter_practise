import 'dart:io';

void main() {
  List mehul = [];
  String? num;

  for (int i = 1; i <= 2; i++) {
    print("enter your name ");
    num = stdin.readLineSync()!;
    mehul.add(num);
  }
  print("-------------------");
  for (var item in mehul) {
    print(item);
  }

  print("do you want to perform more item \n1.Add \n2.Remove");
  int? n = int.parse(stdin.readLineSync()!);
  if (n == 1) {
    bool status = true;
    while (status) {
      print("enter your name ");
      num = stdin.readLineSync()!;
      mehul.add(num);

      print("do you want to add more \n y for yes \n n for no");
      String? choice = stdin.readLineSync()!;

      if (choice == "y") {
        status = true;
      } else {
        status = false;
      }
    }
  } else {
    bool status = true;
    while (status) {
      print("enter your remove name ");
      num = stdin.readLineSync()!;
      mehul.remove(num);

      print("do you want to remove more \n y for yes \n n for no");
      String? choice = stdin.readLineSync()!;

      if (choice == "y") {
        status = true;
      } else {
        status = false;
      }
    }
  }
  print("\n--------------------");
  for (var item in mehul) {
    print(item);
  }
}
