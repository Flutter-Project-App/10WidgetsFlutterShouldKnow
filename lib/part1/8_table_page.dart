/*
We can show our list of data using gridviews, but if we want to show those data in a table and without being able to scroll,
we use the Table widget. The Table provides consistency, you do not need to bother about the
size and the position of each element in each row and column.
 */

import 'package:flutter/material.dart';

class TablePage extends StatefulWidget {
  const TablePage({Key? key}) : super(key: key);

  @override
  _TablePageState createState() => _TablePageState();
}

class _TablePageState extends State<TablePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Table Example'),
      ),
      body: Container(),
    );
  }
}
