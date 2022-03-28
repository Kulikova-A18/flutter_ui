import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {
    setState(() {
      _background = !_background;
    });
  }

  bool _background = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Stack(
                //alignment: AlignmentDirectional.center,
                textDirection: TextDirection.ltr,
                children: <Widget>[
                  _background
                      ? Container(
                          height: 550,
                          width: 600,
                          color: Colors.white,
                        )
                      : Container(
                          height: 550,
                          width: 600,
                          color: Colors.black,
                        ),
                  _background
                      ? Container(
                          height: 550,
                          width: 310,
                          color: Colors.black,
                        )
                      : Container(
                          height: 550,
                          width: 310,
                          color: Colors.white,
                        ),
                  Container(
                      padding: EdgeInsets.only(top: 200, left: 320, right: 10),
                      child: Text('background animation'.toUpperCase(),
                          textDirection: TextDirection.ltr,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: _background ? Colors.black : Colors.white,
                              fontSize: 20))),
                ]),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        backgroundColor: Colors.red,
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
