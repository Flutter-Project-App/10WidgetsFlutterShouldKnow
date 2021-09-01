/*
if you want to create views which contain in two pages. You can use this PageView.
First, you need a pageController to manage the swipe detection and provide the animation.
Then create your pages with the PageView widget and give it the controller with the pages to show.

Nếu bạn muốn tạo các dạng xem chưa trong 2 trang. Bạn có thể sử dụng PageView. Đầu tiên,
bạn cần 1 pageController để quản lý việc vuốt và cung cấp hoạt ảnh. Sau đó tạo pages của bạn với PageView
widget và cung cấp nó bộ điều khiển với các trang sẽ hiển thị
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
    final PageController controller = PageController(initialPage: 0);
    return Scaffold(
      appBar: AppBar(
        title: Text('PageView Example'),
      ),
      body: PageView(
        scrollDirection: Axis.horizontal,
        controller: controller,
        children: <Widget>[
          Center(
            child: Text('First Page, Swipe to see second page'),
          ),
          Center(
            child: Text('Second page'),
          ),
          Center(
            child: Text('Third page'),
          ),
        ],
      ),
    );
  }
}
