// import 'dart:html';

// void main() {
//   for (int i = 1; i <= 5; i++) {
//     print("$i");
//   }
// }

import 'dart:io';

void main() {
  print("enter your number");
  int? num = int.parse(stdin.readLineSync()!);

  for (int i = 0; i <= num; i++) {
    print("your number is $i");
  }
}
