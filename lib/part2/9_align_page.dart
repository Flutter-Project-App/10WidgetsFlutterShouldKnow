/*
Flutter able to compose these widgets together is one of the powerful features of Flutter.
It position child under the parent widget.

Flutter có thể kết hợp các widget này lại với nhau là 1 trong những tính năng của Flutter.
Nó định vị child dưới widget cha.
 */

import 'package:flutter/material.dart';

class AlignPage extends StatefulWidget {
  const AlignPage({Key? key}) : super(key: key);

  @override
  _AlignPageState createState() => _AlignPageState();
}

class _AlignPageState extends State<AlignPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Align Example'),
      ),
      body: Container(
        height: 120,
        width: 120,
        color: Colors.blue.shade50,
        child: Align(
          alignment: Alignment.topRight,
          child: Text(
            'Hi Flutter',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
