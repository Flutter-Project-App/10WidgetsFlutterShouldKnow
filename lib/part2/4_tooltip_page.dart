/*
We use icons to express details visually. But in some case, users can't exactly realize
the meaning of the icon. At that time we display a text lable when tapping or long-press
on the icon.
 */

import 'package:flutter/material.dart';

class TooltipPage extends StatefulWidget {
  const TooltipPage({Key? key}) : super(key: key);

  @override
  _TooltipPageState createState() => _TooltipPageState();
}
// long-pressed
class _TooltipPageState extends State<TooltipPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tooltip Example'),
      ),
      body: Container(
        child: Tooltip(
          message: 'Settings',
          child: ElevatedButton(
            onPressed: () {},
            child: Icon(Icons.settings, size: 100,),
          ),
        ),
      ),
    );
  }
}
