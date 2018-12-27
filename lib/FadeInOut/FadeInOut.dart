import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  @override
  TestState createState() => TestState();
}

class TestState extends State<Test>{
  bool _visible = false;

  @override
  Widget build(BuildContext contest) {
    return  Scaffold(
      body: Center(
        child: AnimatedOpacity(
          opacity: _visible ? 1.0 : 0.0,
          duration: Duration(milliseconds: 500),
          child: Container(
            width: 200.0,
            height: 200.0,
            color: Colors.green,
          )
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState((){_visible = !_visible;});
        },
        tooltip: '',
        child: Icon(Icons.flip),
      ),
    );
  }
}
