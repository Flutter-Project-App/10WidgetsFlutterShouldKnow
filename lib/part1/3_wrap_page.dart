/*
Rows and columns are greater for laying out widgets. But sometimes you are run out of the room.
At that time, the Wrap Widget can help you. As the following example. It will arrange extra children vertically
or horizontally without any error. You can handle it using the direction property.
This is useful when we are using dialogue buttons and chips

--Các hàng và cột tốt hơn để bố trí các widget. Nhưng đôi khi bạn hết phòng. Như ví dụ sau,
Wrap sẽ sắp xếp các con thừa theo chiều dọc hay chiều ngang mà ko có bất kỳ lỗi nào.
Bạn có thể xử lý nó bằng cách sử dụng thuộc tính hướng. Điều này có ích khi chúng ta
sử dụng các dialogue buttons và chips --
 */

import 'package:flutter/material.dart';

class WrapPage extends StatefulWidget {
  const WrapPage({Key? key}) : super(key: key);

  @override
  _WrapPageState createState() => _WrapPageState();
}

class _WrapPageState extends State<WrapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap Example'),
      ),
      body: Wrap(
        children: <Widget>[
          Container(
            color: Colors.red,
            width: 50,
            height: 50,
            child: Center(child: Text("C1", textScaleFactor: 2.5,),),
          ),
          Container(
            color: Colors.yellow,
            width: 150,
            height: 50,
            child: Center(child: Text("C2", textScaleFactor: 2.5,),),
          ),
          Container(
            color: Colors.teal,
            width: 150,
            height: 50,
            child: Center(child: Text("C3", textScaleFactor: 2.5,),),
          ),
          Container(
            color: Colors.blue,
            width: 150,
            height: 50,
            child: Center(child: Text("C4", textScaleFactor: 2.5,),),
          ),
          Container(
            color: Colors.orange,
            width: 150,
            height: 50,
            child: Center(child: Text("C5", textScaleFactor: 2.5,),),
          )
        ],
      ),
    );
  }
}
