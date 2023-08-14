import 'dart:io';

class result {
  var mehul = new Map();
  // void info() {
  result() {
    print("enter your name:");
    String? name = stdin.readLineSync()!;
    print("enter your age");
    int? age = int.parse(stdin.readLineSync()!);
    print("enter your class number:");
    int? num = int.parse(stdin.readLineSync()!);

    mehul["name"] = name;
    mehul["age"] = age;
    mehul['class'] = num;

    print(mehul);
  }

  void numbers() {
    var prisu = new Map();
    print("enter your maths number:");
    int? num = int.parse(stdin.readLineSync()!);
    print("enter your english number:");
    int? num1 = int.parse(stdin.readLineSync()!);
    print("enter your sanskrit number:");
    int? num2 = int.parse(stdin.readLineSync()!);
    print("enter your hindi number:");
    int? num3 = int.parse(stdin.readLineSync()!);
    print("enter your geography number:");
    int? num4 = int.parse(stdin.readLineSync()!);

    int total = num + num1 + num2 + num3 + num4;
    double per = total * 100 / 500;

    prisu["number"] = num;
    prisu["number1"] = num1;
    prisu["number2"] = num2;
    prisu["number3"] = num3;
    prisu["number4"] = num4;

    mehul["number5"] = prisu;
    print(mehul);

    print("--------------------------------------");
    print("your total is $total");
    print("your percentage is = $per");
    if (per <= 100) {
      if (per >= 80) {
        print("***destinction");
      } else if (per >= 60 && per <= 80) {
        print("*****pass");
      } else {
        print("your faill!!!!!!");
      }
    }
  }
}

void main() {
  var obj = result();
  // obj.info();
  obj.numbers();
}
