/*
Most of the time we use boxes in the UIs. If we put a box inside another box, but not fitted exactly,
the UI may little bit inconsistent. That time we use the FittedBox widget. Then
the outfitted box will scale and clip automatically.
 */
import 'package:flutter/material.dart';

class FittedBoxPage extends StatefulWidget {
  const FittedBoxPage({Key? key}) : super(key: key);

  @override
  _FittedBoxPageState createState() => _FittedBoxPageState();
}

class _FittedBoxPageState extends State<FittedBoxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FittedBox Example'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            SizedBox(height: 20,),
            // FittedBox(
            //   fit: BoxFit.cover,
            //   child: Container(
            //     color: Colors.lightBlueAccent,
            //     width: 200,
            //     height: 200,
            //     child: Center(
            //       child: Image.asset('assets/images/demo_bag_1.png'),
            //     ),
            //   ),
            // ),
            // SizedBox(height: 20,),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Container(
                color: Colors.lightBlueAccent,
                width: 200,
                height: 300,
                child: Center(
                  child: Image.asset('assets/images/demo_bag_1.png'),
                ),
              ),
            ),
            // SizedBox(height: 20,),
            // FittedBox(
            //   fit: BoxFit.fill,
            //   child: Container(
            //     color: Colors.lightBlueAccent,
            //     width: 100,
            //     height: 50,
            //     child: Center(
            //       child: Image.asset('assets/images/demo_bag_1.png'),
            //     ),
            //   ),
            // ),
            // SizedBox(height: 20,),
            // FittedBox(
            //   fit: BoxFit.fitHeight,
            //   child: Container(
            //     color: Colors.lightBlueAccent,
            //     width: 100,
            //     height: 50,
            //     child: Center(
            //       child: Image.asset('assets/images/demo_bag_1.png'),
            //     ),
            //   ),
            // ),
            // SizedBox(height: 20,),
            // FittedBox(
            //   fit: BoxFit.contain,
            //   child: Container(
            //     color: Colors.lightBlueAccent,
            //     width: 100,
            //     height: 50,
            //     child: Center(
            //       child: Image.asset('assets/images/demo_bag_1.png'),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
