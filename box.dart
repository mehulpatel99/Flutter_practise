import 'package:flutter/material.dart';

class mycolumntask extends StatelessWidget {
  const mycolumntask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('container widget alignment'),
        leading: Icon(Icons.gif_box),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '*CrossAxisAlignment',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 100,
                width: 100,
                // color: Colors.amber[100],
                decoration: BoxDecoration(
                    color: Colors.amber,
                    border: Border.all(
                        width: 2, color: Color.fromARGB(31, 239, 11, 11))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ElevatedButton(onPressed: () {}, child: Text('click')),
                    ElevatedButton(onPressed: () {}, child: Text('click')),
                    ElevatedButton(onPressed: () {}, child: Text('click'))
                  ],
                ),
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.amber[100],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: () {}, child: Text('click')),
                    ElevatedButton(onPressed: () {}, child: Text('click')),
                    ElevatedButton(onPressed: () {}, child: Text('click'))
                  ],
                ),
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.amber[100],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ElevatedButton(onPressed: () {}, child: Text('click')),
                    ElevatedButton(onPressed: () {}, child: Text('click')),
                    ElevatedButton(onPressed: () {}, child: Text('click'))
                  ],
                ),
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.amber[100],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ElevatedButton(onPressed: () {}, child: Text('click')),
                    ElevatedButton(onPressed: () {}, child: Text('click')),
                    ElevatedButton(onPressed: () {}, child: Text('click'))
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            '*MainAxisAlignment',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('Assets/image/register.png'),
                      fit: BoxFit.fill),
                  // shape: BoxShape.circle,
                  border: Border.all(width: 3, color: Colors.black),
                ),
                height: 150,
                width: 150,
                // color: Colors.amber[100],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 30,
                      width: 80,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('click'),
                        style: ButtonStyle(
                            shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical()),
                        )),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                      width: 90,
                      child: ElevatedButton(
                          onPressed: () {},
                          child: Text('click'),
                          style: ButtonStyle(
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.vertical())))),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 5.0,
                          shadowColor: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35.0))),
                      onPressed: () {},
                      child: Text('click'),
                    )
                  ],
                ),
              ),
              Container(
                height: 150,
                width: 150,
                color: Colors.amber[100],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: () {}, child: Text('click')),
                    ElevatedButton(onPressed: () {}, child: Text('click')),
                    ElevatedButton(onPressed: () {}, child: Text('click'))
                  ],
                ),
              ),
              Container(
                height: 150,
                width: 150,
                color: Colors.amber[100],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: () {}, child: Text('click')),
                    ElevatedButton(onPressed: () {}, child: Text('click')),
                    ElevatedButton(onPressed: () {}, child: Text('click'))
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 150,
                width: 150,
                color: Colors.amber[100],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: () {}, child: Text('click')),
                    ElevatedButton(onPressed: () {}, child: Text('click')),
                    ElevatedButton(onPressed: () {}, child: Text('click'))
                  ],
                ),
              ),
              Container(
                height: 150,
                width: 150,
                color: Colors.amber[100],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: () {}, child: Text('click')),
                    ElevatedButton(onPressed: () {}, child: Text('click')),
                    ElevatedButton(onPressed: () {}, child: Text('click'))
                  ],
                ),
              ),
              Container(
                height: 150,
                width: 150,
                color: Colors.amber[100],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: () {}, child: Text('click')),
                    ElevatedButton(onPressed: () {}, child: Text('click')),
                    ElevatedButton(onPressed: () {}, child: Text('click'))
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
