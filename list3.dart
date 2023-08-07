import 'dart:io';

void main() {
  List<String> subject = [];

  bool status = true;

  while (status) {
    print("enter yor subject");
    String? name = stdin.readLineSync()!;
    subject.add(name);

    print("do you want to continue press y for yes \n press n for no:");
    String? choice = stdin.readLineSync()!;
    if (choice == 'y') {
      status = true;
    } else {
      status = false;
    }
  }
  print("\n\n");
  for (var item in subject) {
    print(item);
  }
}
