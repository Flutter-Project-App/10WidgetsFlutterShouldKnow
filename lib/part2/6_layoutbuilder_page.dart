/*
This widget use to determine how the size of the widget and how it depends on the parent
widgets (height and width properties). Its builder function contains parameters to
build the context and the incoming box constraints.
 */

import 'package:flutter/material.dart';

class LayoutBuilderPage extends StatefulWidget {
  const LayoutBuilderPage({Key? key}) : super(key: key);

  @override
  _LayoutBuilderPageState createState() => _LayoutBuilderPageState();
}

class _LayoutBuilderPageState extends State<LayoutBuilderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LayoutBuilder Example'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            return _buildWideContainers();
          } else {
            return _buildNormalContainers();
          }
        },
      ),
    );
  }

  Widget _buildWideContainers() {
    return Center(
      child: Container(
        height: 100,
        width: 100,
        color: Colors.red,
      ),
    );
  }

  Widget _buildNormalContainers() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            height: 100,
            width: 100,
            color: Colors.red,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }
}
