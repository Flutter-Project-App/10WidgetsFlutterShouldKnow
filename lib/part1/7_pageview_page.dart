/*
if you want to create views which contain in two pages. You can use this PageView.
First, you need a pageController to manage the swipe detection and provide the animation.
Then create your pages with the PageView widget and give it the controller with the pages to show.
 */
import 'package:flutter/material.dart';

class PageViewPage extends StatefulWidget {
  const PageViewPage({Key? key}) : super(key: key);

  @override
  _PageViewPageState createState() => _PageViewPageState();
}

class _PageViewPageState extends State<PageViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageView Example'),
      ),
    );
  }
}
