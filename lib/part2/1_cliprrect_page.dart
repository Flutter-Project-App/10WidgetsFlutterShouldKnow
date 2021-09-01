/*
if you have something contain in a box, like an image, you can round or shape those corners
 as you want by using this widget. It's not much theory behind this widget.

 Nếu bạn có 1 thứ j đó chứa trong hộp, như 1 ảnh, bạn có thể làm tròn hoặc định dạng các
 góc đó theo ý muốn bằng cách sử dụng widget này.
 */

import 'package:flutter/material.dart';

class ClipRRectPage extends StatefulWidget {
  const ClipRRectPage({Key? key}) : super(key: key);

  @override
  _ClipRRectPageState createState() => _ClipRRectPageState();
}

class _ClipRRectPageState extends State<ClipRRectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ClipRRect Example'),
      ),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.asset('assets/images/demo_bag_2.png'),
        ),
      ),
    );
  }
}
