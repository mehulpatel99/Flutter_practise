import 'dart:io';

class factorial {
  factorial() {
    //constructor
    print("enter your number : ");
    int? num1 = int.parse(stdin.readLineSync()!);

    int factorial = 1;

    for (int i = 1; i <= num1; i++) {
      factorial *= i;
    }
    print(" factorial of $num1 is $factorial");
  }
}

void main() {
  var obj = factorial();
}
