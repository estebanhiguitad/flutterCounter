import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  @override
  createState() => new _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  final TextStyle _textStyle = TextStyle(fontSize: 25);
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Título'),
        centerTitle: true,
        elevation: 1.0,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Número de clicks:',
            style: _textStyle,
          ),
          Text('$_conteo', style: _textStyle)
        ],
      )),
      floatingActionButton: _buttonsToOperate(),
    );
  }

  Widget _buttonsToOperate() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0),
        FloatingActionButton(
          onPressed: actionOnCero,
          child: Icon(Icons.exposure_zero),
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(
          onPressed: actionOnRemove,
          child: Icon(Icons.remove),
        ),
        SizedBox(width: 10.0),
        FloatingActionButton(
          onPressed: actionOnAdd,
          child: Icon(Icons.add),
        ),
      ],
    );
  }

  void actionOnCero() {
    setState(() {
      _conteo = 0;
    });
  }

  void actionOnAdd() {
    setState(() => _conteo++);
  }

  void actionOnRemove() {
    setState(() {
      _conteo--;
    });
  }
}
