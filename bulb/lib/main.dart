import 'package:flutter/material.dart';
import 'package:window_size/window_size.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    setWindowMaxSize(const Size(512, 768));
    setWindowMinSize(const Size(512, 768));

    return MaterialApp(
      theme:
          new ThemeData(scaffoldBackgroundColor: Color.fromARGB(255, 0, 0, 0)),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 100,
              child: Row(
                children: [
                  Transform.scale(
                    scale: 5.0,
                    child: Switch(
                        value: switchValue,
                        activeColor: Colors.red,
                        activeTrackColor: Color.fromARGB(94, 231, 34, 54),
                        inactiveTrackColor: Color.fromARGB(171, 255, 255, 255),
                        inactiveThumbColor: Colors.white,
                        onChanged: (value) {
                          setState(() {
                            switchValue = value;
                          });
                        }),
                  ),
                ],
              ),
            ),
            !switchValue
                ? Container(
                    width: 20,
                  )
                : Container(
                    width: 30,
                  ),
            Container(
              child: Row(
                children: [
                  !switchValue
                      ? Text(
                          'N'.toUpperCase(),
                          style: const TextStyle(
                              fontSize: 80, color: Colors.white),
                        )
                      : Text(
                          'FF'.toUpperCase(),
                          style:
                              const TextStyle(fontSize: 80, color: Colors.red),
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
