/*
Positioned widget use to position widgets inside the stack widget. There are 2 ways
to do it, one is the Positioned widget. You need to wrap the widget inside the Stack widget.

Positioned widget sử dụng để vị trí các widgets trong stack widget. Có 2 cách để làm điều đó,
1 trong đó là widget này.
 */

import 'package:flutter/material.dart';

class PositionedPage extends StatefulWidget {
  const PositionedPage({Key? key}) : super(key: key);

  @override
  _PositionedPageState createState() => _PositionedPageState();
}

class _PositionedPageState extends State<PositionedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Positioned Example'),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 300),
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: <Widget>[
            Positioned(
                top: 0,
                right: 80,
                child: Icon(
                  Icons.message,
                  size: 128,
                  color: Colors.greenAccent.shade400,
                )),
            Positioned(
                top: 0,
                right: 80,
                child: CircleAvatar(
                  radius: 16,
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  child: Text('24'),
                ))
          ],
        ),
      ),
    );
  }
}
