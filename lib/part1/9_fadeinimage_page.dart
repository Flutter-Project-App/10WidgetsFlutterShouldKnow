/*
If you are displaying images downloaded from the network, It's not a good pratice showing empty until it downloads.
You can use a FadeInImage widget to show a placeholder (from assets directory) until
complete the download. You can set the image dimensions early to avoid problems after
loading.
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
      body: Container(),
    );
  }
}
