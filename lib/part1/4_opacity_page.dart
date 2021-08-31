/*
What will happen if your child is deleted? space will collapse and rearranged the rest of the children.
After deleting the child, If you want to keep the space remain, you can try with the opacity widget.
Another way, you can use the opacity as a property of an image or an animation.

-- Điều gì sẽ xảy ra nếu widget con bị xoá? ko gian sẽ bị thu gọn và sắp xếp lại những widget
 con còn lại. Sau khi xoá widget con, nếu bạn muốn giữ khoảng không gian, bạn có thể thử opacity widget.
 Một cách khác, bạn có thể sử dụng độ mờ đục như 1 thuộc tính của hình ảnh hoặc hoạt ảnh--
 */

import 'package:flutter/material.dart';

class OpacityPage extends StatefulWidget {
  const OpacityPage({Key? key}) : super(key: key);

  @override
  _OpacityPageState createState() => _OpacityPageState();
}

class _OpacityPageState extends State<OpacityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Opacity Example'),
      ),
      body: Column(
        children: [
          Container(color: Colors.red, height: 100,),
          Opacity(opacity: 0.5,
          child: Container(color: Colors.black, height: 50,)),
          Opacity(opacity: 0.3,
          child: Container(color: Colors.green, height: 100,)),
          Opacity(opacity: 0.7, child: Image.asset('assets/images/demo_bag_1.png'),),
          Opacity(opacity: 0.7, child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.red, Colors.blue, Colors.yellow])
            ),
            alignment: Alignment.center,
            child: Text('Hello'),
            height: 100,
          ),)
        ],
      ),
    );
  }
}
