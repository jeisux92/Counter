import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final styleText = new TextStyle(fontSize: 25);

  final count = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("Titulo"),
        centerTitle: true,
        elevation: 10.0,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              "Numero de clicks:",
              style: styleText,
            ),
            Text(
              "$count",
              style: styleText,
            )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.redAccent,
          child: Icon(Icons.add),
          onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
