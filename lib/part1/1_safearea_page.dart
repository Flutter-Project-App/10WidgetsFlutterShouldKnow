/* Use to make the dynamic and adaptive UI for users on difference devices. We want to make
adaptive and Error-free UIs, we use SafeArea widget. As an example, It's adding extra padding when necessary.
It uses the media query to check the dimension of the screen for make the decisions on that.

-- Sử dụng để tạo giao diện người dùng năng động và thích ứng cho người dùng trên các thiết bị
khác nhau. SafeArea sẽ thêm phần đệm bổ sung khi cần thiết. Nó sử dụng media query để kiểm tra
kích thước của màn hình để đưa ra quyết định về điều đó. --
*/
import 'package:flutter/material.dart';

class SafeAreaPage extends StatefulWidget {

  @override
  _SafeAreaPageState createState() => _SafeAreaPageState();
}

class _SafeAreaPageState extends State<SafeAreaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: Column(
      children: [
        Text("Hello Flutter"),
        ElevatedButton(onPressed: () => Navigator.of(context).pop(), child: Text("Back"))
      ],
    )));
  }
}
