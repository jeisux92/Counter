import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  final _styleText = new TextStyle(fontSize: 25);

  int _count = 0;

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
              style: _styleText,
            ),
            Text(
              "$_count",
              style: _styleText,
            )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
      floatingActionButton: _createButtons(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      
    );
  }

  Widget _createButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(
          width: 30.0,
        ),
        FloatingActionButton(
          child: Icon(Icons.exposure_zero),
          onPressed: _reset,
        ),
        Expanded(
          child: SizedBox(),
        ),
        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: substract,
        ),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: _add,
        )
      ],
    );
  }

  void substract() {
    setState(() => _count--);
  }

  void _add() {
    setState(() => _count++);
  }

  void _reset() {
    setState(() => _count = 0);
  }
}
