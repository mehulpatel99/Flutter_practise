import 'package:flutter/material.dart';
import 'package:myproject/practice/chat.dart';

class form extends StatelessWidget {
  const form({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              MaterialPageRoute materialPageRoute = new MaterialPageRoute(
                builder: (context) => mychat(),
              );
              Navigator.of(context).push(materialPageRoute);
            },
            icon: Icon(Icons.arrow_back)),
        title: Text('Form'),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
        backgroundColor: Colors.teal[200],
        // elevation: 0,
      ),
      body: Container(
        color: Colors.teal[200],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "fill the form",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink,
                  shadows: [
                    Shadow(
                        blurRadius: 8,
                        color: Colors.black,
                        offset: Offset(8.0, 8.0))
                  ]),
            ),
            SizedBox(
              height: 80,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Uasername',
                  labelText: ('Username'),
                  prefixIcon: Icon(Icons.unsubscribe_rounded),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: 'email',
                  labelText: 'email',
                  prefixIcon: Icon(Icons.near_me_rounded),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    elevation: 30,
                    shadowColor: Colors.black,
                  ),
                  onPressed: () {},
                  icon: Icon(Icons.verified_user_sharp),
                  label: Text('Click',style: TextStyle(fontSize: 20),),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      
                        elevation: 30, shadowColor: Colors.blueGrey),
                    onPressed: () {},
                    child: Text('Submit'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
