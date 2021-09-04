/*
Transform widget uses to perform transformation activities of other widgets
(change the shape, size, position and orientation)

Transform widget sử dụng để thực hiện các hoạt động chuyển đổi của các widgets khác
(thay đổi hình dạng, kích thước và hướng)
 */

import 'package:flutter/material.dart';

class TransformPage extends StatefulWidget {
  const TransformPage({Key? key}) : super(key: key);

  @override
  _TransformPageState createState() => _TransformPageState();
}

class _TransformPageState extends State<TransformPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transform Example'),
      ),
      body: Container(
        color: Colors.blue,
        child: Transform(
          alignment: Alignment.topRight,
          transform: Matrix4.skewY(0.3)..rotateZ(-120),
          child: Container(
            padding: EdgeInsets.all(8),
            color: Color(0xFFEE0000),
            child: Text('OK man, hahaha'),
          ),
        ),
      ),
    );
  }
}
