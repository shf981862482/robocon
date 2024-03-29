import 'package:flutter/material.dart';

void main() => runApp(Robocon());

class Robocon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '萝卜坑',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LauncherPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class LauncherPage extends StatefulWidget {
  LauncherPage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _LauncherPageState createState() => _LauncherPageState();
}

class _LauncherPageState extends State<LauncherPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
