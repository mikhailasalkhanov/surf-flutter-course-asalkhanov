import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SightListScreen extends StatefulWidget {
  @override
  _SightListScreenState createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                children: [
                  TextSpan(
                    text: 'С', style: TextStyle(color: Color(0xff4CAF50)),
                  ),
                  TextSpan(
                    text: 'писок\n'
                  ),
                ]
              ),
              TextSpan(
                children: [
                  TextSpan(
                    text: 'и', style: TextStyle(color: Color(0xffFCDD3D)),
                  ),
                  TextSpan(
                    text: 'нтересных мест'
                  ),
                ]
              ),
            ],
            style: TextStyle(
              color: Color(0xff3B3E5B),
              fontFamily: 'Roboto',
              fontSize: 32,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 128,
      )
    );
  }
}
