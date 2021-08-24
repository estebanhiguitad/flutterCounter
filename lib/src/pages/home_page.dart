import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(fontSize: 25);
  int conteo = 10;

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
          Text('$conteo', style: _textStyle)
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
          onPressed: () {},
          child: Icon(Icons.exposure_zero),
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(
          onPressed: () => print('hola mundo 1'),
          child: Icon(Icons.remove),
        ),
        SizedBox(width: 10.0),
        FloatingActionButton(
          onPressed: () => print('hola mundo 2'),
          child: Icon(Icons.add),
        ),
      ],
    );
  }

  void actionOnCero() {}
}
