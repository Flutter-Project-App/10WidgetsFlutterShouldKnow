/*
Nowadays apps are behaving highly asynchronous. Anything can happen anytime in any order.
We can handle these data think as streams of data. Dart has support to use this asynchronous stream of data using streams.
You can utilize this function on Flutter using StreamBuilder widget.
You can use data without any error with this. If there have any error, It also can handle
using the snapshot notifier.

Ngày nay, các ứng dụng hoạt động bất đồng bộ cao. Bất cứ điều gì có thể xảy ra bất cứ
lúc nào theo thứ tự bất kỳ. Chúng ta có thể xử lý những dữ liệu này được coi là luồng
dữ liệu. Dart hỗ trợ sử dụng luồng dữ liệu bất đồng bộ này bằng cách sử dụng streams.
Sử dụng StreamBuilder. Bạn có thể sử dụng dữ liệu mà ko gặp bất kì lỗi nào. Nếu có lỗi,
nó có thể sử dụng thông báo snapshot.
 */
import 'dart:async';

import 'package:flutter/material.dart';

class StreamBuilderPage extends StatefulWidget {
  const StreamBuilderPage({Key? key}) : super(key: key);

  @override
  _StreamBuilderPageState createState() => _StreamBuilderPageState();
}

class _StreamBuilderPageState extends State<StreamBuilderPage> {
  int _counter = 0;
  late StreamController<int> _events;

  @override
  void initState() {
    super.initState();
    _events = new StreamController<int>();
    _events.add(0);
  }

  void _incrementCounter() {
    _counter++;
    _events.add(_counter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StreamBuilder Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Number of Button Pressed: '),
            StreamBuilder(
                stream: _events.stream,
                builder: (context, snapshot) {
                  return Text(
                    snapshot.data.toString(),
                    style: Theme.of(context).textTheme.subtitle1,
                  );
                })
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Add',
        child: Icon(Icons.add),
      ),
    );
  }
}
