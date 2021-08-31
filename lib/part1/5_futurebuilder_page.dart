/*
FutureBuilder lets you easily determine the current state of a future and show the progress of data loading.
Make sure to check the state of the future with connectionState and display an appropriate widget when the state is busy.
It's a good practice to make sure no connection error. There have other connection states which we can check:
* ConnectionState.none
* ConnectionState.active
* ConnectionState.waiting
* ConnectionState.done

-- FutureBuilder cho phẹp bạn dễ dàng xác định trạng thái hiện tại của future và hiển thị
tiến trình tải dữ liệu. Đảm bảo kiếm tra trạng thái của future với connectState và
hiển thị 1 widget thích hợp khi trạng thái đang bận. Đó là 1 phương pháp hay để đảm bảo ko có lỗi
kết nối. Có các trạng thái kết nối khác mà chúng tôi có thể kiếm tra. --
 */

import 'package:flutter/material.dart';

class FutureBuilderPage extends StatefulWidget {
  const FutureBuilderPage({Key? key}) : super(key: key);

  @override
  _FutureBuilderPageState createState() => _FutureBuilderPageState();
}

class _FutureBuilderPageState extends State<FutureBuilderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FutureBuilder Example'),
      ),
    );
  }
}

