/*
We can show our list of data using gridviews, but if we want to show those data in a table and without being able to scroll,
we use the Table widget. The Table provides consistency, you do not need to bother about the
size and the position of each element in each row and column.

Chúng ta có thể hiển thị danh sách dữ liệu sử dụng gridviews, nhưng nếu chúng ta muốn hiển thị
những dữ liệu đó trong 1 bảng và ko thể cuộn, --> sử dụng Table widget. Table cung cấp tính nhất quán,
ko cần bận tâm về kích thước và vị trí của từng phần tử trong mỗi hàng và cột.
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
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20.0),
              child: Table(
                defaultColumnWidth: FixedColumnWidth(100.0),
                border: TableBorder.all(
                    color: Colors.red, style: BorderStyle.solid, width: 2),
                children: [
                  TableRow(children: [
                    Column(
                      children: [
                        Text(
                          'Website',
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Tutorial',
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Review',
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Review',
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  ]),
                  TableRow(children: [
                    Column(
                      children: [
                        Text(
                          'Javapoint',
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Flutter',
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '5*',
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '5*',
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
