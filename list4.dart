import 'dart:io';

void main() {
  var shopping = [];
  bool mainstatus = true;
  String? mainchoice;
  while (mainstatus) {
    String? num;
    int? choice;
    String? menu = """
                    menu
                     1) for add items
                     2)for remove items
                     """;
    print(menu);

    print("enter your choice");
    choice = int.parse(stdin.readLineSync()!);

    if (choice == 1) {
      var status = true;
      while (status) {
        print("enter your name");
        num = stdin.readLineSync()!;
        shopping.add(num);

        print("do you want to add more \n yes for y \n no for n");
        String? nxtchoice = stdin.readLineSync()!;
        if (nxtchoice == "y") {
          status = true;
        } else {
          status = false;
        }
      }
    } else {
      var status = true;
      while (status) {
        print("enter which items you want to remove");
        num = stdin.readLineSync()!;

        shopping.remove(num);

        print("do you want to add more \nyes for y \n no for n");
        String? nxtchoice = stdin.readLineSync()!;
        if (nxtchoice == "y") {
          status = true;
        } else {
          status = false;
        }
      }
    }
    print(
        "do you want to perform more options:\npress y for yes\npress n for no");
    mainchoice = stdin.readLineSync()!;
    if (mainchoice == "y") {
      mainstatus = true;
    } else {
      mainstatus = false;
    }
  }
  for (var item in shopping) {
    print(item);
  }
}
