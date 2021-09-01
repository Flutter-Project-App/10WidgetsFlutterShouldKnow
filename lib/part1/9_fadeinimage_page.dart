/*
If you are displaying images downloaded from the network, It's not a good pratice showing empty until it downloads.
You can use a FadeInImage widget to show a placeholder (from assets directory) until
complete the download. You can set the image dimensions early to avoid problems after
loading.

Nếu bạn đang hiển thị hình ảnh được tải xuống từ mạng, thì việc hiển thị hình ảnh trống cho đến khi tải xuống
ko phải là 1 phương pháp tốt. Bạn có thể sử dụng FadeInImage để hiển thị hình ảnh giữ chỗ
cho đến khi hoàn tất quá trình tải xuống. Bạn có thể đặt kích thước hình ảnh sớm để tránh các vấn đề sau khi tải.
 */

import 'package:flutter/material.dart';

class FadeInImagePage extends StatefulWidget {
  const FadeInImagePage({Key? key}) : super(key: key);

  @override
  _FadeInImagePageState createState() => _FadeInImagePageState();
}

class _FadeInImagePageState extends State<FadeInImagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FadeInImage Example'),
      ),
      body: Stack(
        children: <Widget>[
          // Center(child: CircularProgressIndicator(),),
          Center(
            child: FadeInImage.assetNetwork(
                placeholder: 'assets/images/loading.gif!w340',
                image: 'https://picsum.photos/250?image=9'),
          )
        ],
      ),
    );
  }
}
