import 'dart:io';

void main() {
  print("enter how time you want to run loop ");
  int? number = int.parse(stdin.readLineSync()!);
  for (int i = 0; i <= number; i++) {
    for (int i = 0; i <= number; i++) {
      print("enter your $i value");
      int? num = int.parse(stdin.readLineSync()!);
      print("enter your 2nd loop value:");
      int? num1 = int.parse(stdin.readLineSync()!);
    }
    // for (int i = 0; i <= number; i++) {
    //   print("enter your 2nd loop value:");
    //   int? num1 = int.parse(stdin.readLineSync()!);
    // }
  }
}
