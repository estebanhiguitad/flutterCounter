import 'package:flutter/material.dart';

// Own packages
import 'package:contador/src/pages/counter_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(child: CounterPage()),
    );
  }
}
