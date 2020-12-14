import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Homepage(),
    theme: ThemeData(
      primarySwatch: Colors.teal,
    ),
  ));
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome App"),
      ),
      body: Container(
        height: 100,
        // width: 500,
        color: Colors.teal[100],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              // color: Colors.red,
              width: 100,
              height: 100,
              color: Colors.red,
              // clipBehavior: Clip.antiAlias,
              alignment: Alignment.topLeft,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              // color: Colors.red,
              width: 100,
              height: 100,
              color: Colors.yellow,
              // clipBehavior: Clip.antiAlias,
              alignment: Alignment.topLeft,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              // color: Colors.red,
              width: 100,
              height: 100,
              color: Colors.green,
              // clipBehavior: Clip.antiAlias,
              alignment: Alignment.topLeft,
            ),
          ],
        ),
      ),
    );
  }
}
