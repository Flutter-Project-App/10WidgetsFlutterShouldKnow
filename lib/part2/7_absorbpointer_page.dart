/*
If you want to disable functions of few widgets at once, You can use the AbsorbPointer widget.
Then all functions such as clicked, tapped, scrolled, dragged, and respond to hover are disabled of the widget tree.
You just need to wrap other widgets inside your AbsorbPointer widget.

Nếu bạn muốn tắt chức năng của 1 số widget con cùng 1 lúc, bạn có thể sử dụng AbsorbPointer widget.
Sau đó tất cả các chức năng nhấp, nhấn, cuộn, kéo và phản hồi khi di chuột đều bị vô hiệu
hoá. Chỉ cần bọc các widget khác bên trong AbsorbPointer widget
 */

import 'package:flutter/material.dart';

class AbsorbPointerPage extends StatefulWidget {
  const AbsorbPointerPage({Key? key}) : super(key: key);

  @override
  _AbsorbPointerPageState createState() => _AbsorbPointerPageState();
}

class _AbsorbPointerPageState extends State<AbsorbPointerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Absorbpointer Example'),
      ),
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: <Widget>[
          SizedBox(
            width: 200,
            height: 100,
            child: ElevatedButton(
              onPressed: () {},
              child: null,
            ),
          ),
          SizedBox(
            width: 100,
            height: 200,
            child: AbsorbPointer(
              absorbing: true,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.blue.shade200),
                onPressed: () {},
                child: null,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
