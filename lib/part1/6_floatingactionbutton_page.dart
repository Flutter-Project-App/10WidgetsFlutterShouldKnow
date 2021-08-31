/*
FAB is already created when we initiate the application. It's widget of the Scaffold main widget.
One screen should have one floatingactionbutton, if have somes floatingactionbutton,
it have to have heroTag.
 */

import 'package:flutter/material.dart';

class FloatingActionButtonPage extends StatefulWidget {
  const FloatingActionButtonPage({Key? key}) : super(key: key);

  @override
  _FloatingActionButtonPageState createState() => _FloatingActionButtonPageState();
}

class _FloatingActionButtonPageState extends State<FloatingActionButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionButton Example'),
      ),
      body: Container(
        child: Column(
          children: [
            FloatingActionButton(
              onPressed: () {},
              child: Text('Back'),
            ),
            FloatingActionButton(
              onPressed: () {},
              child: Text('Go'),
            ),
          ],
        ),
      ),
    );
  }
}
