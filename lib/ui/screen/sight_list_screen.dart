import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Виджет экрана "Список интересных мест"
class SightListScreen extends StatefulWidget {
  @override
  _SightListScreenState createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Список\nинтересных мест',
          style: TextStyle(
            color: Color(0xFF3B3E5B),
            fontFamily: 'Roboto',
            fontSize: 32,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,          
          )
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 128,
      ),
    );
  }
}
