/*
Every Flutter UIs use rows and columns commonly. You can keep components relax or
tighten up inside those rows and columns. You can use extra space between children or
handle that space as you wish.The expanded widget is similar to the Flexible.

-- Mọi giao diện Flutter thường sử dụng các hàng và cột. Bạn có thể giữ các thành phần giãn ra
hoặc thắt chặt bên trong các hàng, cột đó. Bạn có thể sử dụng thêm Space giữa các
widget con hoặc xử lý ko gian đó mà bạn muốn. --
* */

import 'package:flutter/material.dart';

class ExpandedPage extends StatefulWidget {
  const ExpandedPage({Key? key}) : super(key: key);

  @override
  _ExpandedPageState createState() => _ExpandedPageState();
}

class _ExpandedPageState extends State<ExpandedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Expanded Example'), centerTitle: true,),
      body: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.red,
            child: Text('100 pixels'),
          ),
          Expanded(
            child: Container(
              color: Colors.yellow,
            ),
          ),
          Container(height: 100, width: double.infinity, color: Colors.red, child: Text('100 pixels')),
        ],
      ),
    );
  }
}
