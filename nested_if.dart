import 'dart:io';

void main() {
  print("enter marks ");
  var marks = int.parse(stdin.readLineSync()!);

  if (marks >= 0 && marks <= 100) {
    if (marks >= 70) {
      print(" a grade");
    } else if (marks >= 60 && marks < 70) {
      print("b grade");
    } else if (marks >= 50 && marks < 60) {
      print("your c grade ");
    } else {
      print("faill!!");
    }
  } else {
    print("invalidd input");
  }
}
