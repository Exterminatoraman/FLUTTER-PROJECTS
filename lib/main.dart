import 'dart:ffi';

import 'package:flutter/material.dart';
import 'GD.dart';
import 'Diamond.dart';
void main() {
  runApp(const jwelly());
}


class jwelly extends StatelessWidget {
  const jwelly({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Jwelly',
        home: Gold(),
    );
  }
}

class Gold extends StatelessWidget {
  const Gold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Jwelly')),
        backgroundColor: Colors.pink[200],
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Container(
                width: 1000,
                height: 1000,
                color: Colors.yellow,
                child: TextButton(
                  child: Text('Gold',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  onPressed: (){
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const MyApp()),
                    );
                  },
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: 1000,
              height: 1000,
              color: Colors.blue,
              child: TextButton(
                child: Text('Diamond',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                onPressed: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const diamondmain()),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );


  }
}


