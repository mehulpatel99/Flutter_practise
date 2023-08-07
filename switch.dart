import 'dart:io';

void main() {
  String? menu = """
                   menu
                  press 1 for add
                  press 2 for sub
                  """;

  print(menu);
  print("enter your choice");
  int? choice = int.parse(stdin.readLineSync()!);

  switch (choice) {
    case 1:
      print("enter your 1 number ");
      int? num1 = int.parse(stdin.readLineSync()!);
      print("enter your 2 number ");
      int? num2 = int.parse(stdin.readLineSync()!);
      int? ans = num1 + num2;
      print("your ans is = $ans");
      break;

    case 2:
      print("enter your 1 number ");
      int? num1 = int.parse(stdin.readLineSync()!);
      print("enter your 2 number ");
      int? num2 = int.parse(stdin.readLineSync()!);
      int? ans = num1 - num2;
      print("your ans is = $ans");
      break;
  }
}
