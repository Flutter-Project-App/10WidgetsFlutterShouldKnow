/*
Nowadays apps are behaving highly asynchronous. Anything can happen anytime in any order.
We can handle these data think as streams of data. Dart has support to use this asynchronous stream of data using streams.
You can utilize this function on Flutter using StreamBuilder widget.
You can use data without any error with this. If there have any error, It also can handle
using the snapshot notifier.
 */
import 'package:flutter/material.dart';

class StreamBuilderPage extends StatefulWidget {
  const StreamBuilderPage({Key? key}) : super(key: key);

  @override
  _StreamBuilderPageState createState() => _StreamBuilderPageState();
}

class _StreamBuilderPageState extends State<StreamBuilderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StreamBuilder Example'),
      ),
      body: Container(),
    );
  }
}
