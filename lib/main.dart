import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFF832685),
        primaryColorLight: Color(0xFFC81379),
        accentColor: Colors.black,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = 'Opacity & Animated Opacity';

  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Material(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Opacity',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              Opacity(
                opacity: 0.4,
                child: Container(
                  width: 500.0,
                  height: 200.0,
                  color: Color(0xFF832685),
                  child: Center(
                    child: Text(
                      'Open TV',
                      style: TextStyle(color: Colors.white, fontSize: 26.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Play Animated Opacity [Fade In / Out]',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              AnimatedOpacity(
                duration: Duration(seconds: 2),
                opacity: _visible ? 1 : 0,
                child: Container(
                  width: 500.0,
                  height: 200.0,
                  color: Color(0xFF832685),
                  child: Center(
                    child: Text(
                      'Open TV',
                      style: TextStyle(color: Colors.white, fontSize: 26.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: FloatingActionButton(
                  tooltip: 'Play',
                  backgroundColor: Color(0xFF832685),
                  onPressed: () {
                    setState(() => _visible = !_visible);
                  },
                  child: Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                    size: 36.0,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
