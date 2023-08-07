// import 'dart:io';

// void main() {
//   int i = 1; //intialization

//   while (i <= 5) {
//     print("your $i number"); //stattement
//     i++; //updation
//   }
// }

import 'dart:io';

void main() {
  int i = 1; //intialization

  print("enter your number ");
  int? a = int.parse(stdin.readLineSync()!);
  while (i <= a) {
    print("your number  : $i"); //stattement

    i++; //updation
  }
}
