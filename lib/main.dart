import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyFirstWidget extends StatelessWidget {
  var _counter = 0;
  @override
  Widget build(BuildContext context) {
    _counter++;
    print(_counter);
    //счетчик всегда показывает 1, переменная _counter создается и уничтожается каждый раз вместе с виджетом 
    return Container(
      child: Center(
        child: Text('Hello!'),
      )
    );
  }
}

class MyFirstStatefulWidget extends StatefulWidget {
  @override
  _MyFirstStatefulWidgetState createState() => _MyFirstStatefulWidgetState();
}

class _MyFirstStatefulWidgetState extends State<MyFirstStatefulWidget> {
  var _counter = 0;

  @override
  Widget build(BuildContext context) {
    _counter++;      
    print(_counter);
    //значения счетчика сохраняются, значит State сохраняется, когда виджет перерисовывается
    return Container(
      child: Center(
        child: Text('$_counter'),
      )
    );
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyFirstWidget(),
    );
  }
}
