import 'package:flutter/material.dart';

class myexten extends StatelessWidget {
  const myexten({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.ac_unit_sharp),
        title: Text('extends'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              height: 100,
              // width: 100,
              color: Colors.amber,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              height: 100,
              // width: 100,
              color: Colors.blue,
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              
              height: 100,
              width: double.infinity,
              // color: Colors.pink,
                decoration: BoxDecoration(border: Border.all(
                  width: 5,color: Colors.black
                ),
              ),
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: (){}, child: Text('click'),),
                  ],
                ) ),

            ),
        ],
          ),
        
      );
    
  }
}
