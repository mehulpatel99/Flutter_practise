import 'package:flutter/material.dart';

class list extends StatelessWidget {
  const list({super.key});

  @override
  Widget build(BuildContext context) {
    List arrNames = [
      'mehul',
      'sunil',
      'prem',
      'prisu',
      'nikhil',
      'kalpesh',
      'vishal',
      'nikhil',
      'kalpesh',
    ];

    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.person),
          title: Text('List'),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Text(arrNames[index],
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold));
          },
          itemCount: arrNames.length,
          itemExtent: 100,
          scrollDirection: Axis.horizontal,
        )
        
        );
  }
}
