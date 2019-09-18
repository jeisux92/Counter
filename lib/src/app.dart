import 'package:counter/src/pages/count_page.dart';
import 'package:counter/src/pages/home_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(home: CounterPage());
  }
}
