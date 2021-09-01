/*
When you need to customize your interface too much, this is one of a widget to achieve that.
You can paint on the canvas any way you want.
- paint: Call whenever the object needs to be repainted
- shouldRepaint: Call when creating a new instance of the class.
 */

import 'package:flutter/material.dart';

class CustomPaintPage extends StatefulWidget {
  const CustomPaintPage({Key? key}) : super(key: key);

  @override
  _CustomPaintPageState createState() => _CustomPaintPageState();
}

class _CustomPaintPageState extends State<CustomPaintPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CustomPaint Example'),
      ),
      body: CustomPaint(
        painter: ShapePainter(),
        child: Container(),
      ),
    );
  }
}

class ShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = Color(0xffff0000)
      ..style = PaintingStyle.fill;
    var paint2 = Paint()
      ..color = Color(0xff000000)
      ..style = PaintingStyle.fill;
    var paint3 = Paint()
      ..color = Color(0xff0000ff)
      ..style = PaintingStyle.fill;
    canvas.drawCircle(Offset(75, 75), 70, paint1);
    canvas.drawRect(Rect.fromPoints(Offset(100, 100), Offset(300, 300)), paint3);
    canvas.drawLine(Offset(200, 200), Offset(20, 40), paint2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
