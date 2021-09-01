/*
When you need to click on an item and route to the next page which relevant to the clicked item,
you can use this Hero widget with a nice animation between the transition. It's a super cool
UI experience, You can provide to your users.

Khi bạn cần nhấp vào 1 mục và chuyển đến trang tiếp theo có liên quan đến mục đã nhấp,
bạn có thể sử dụng Hero widget với hình ảnh động đẹp giừa quá trình chuyển đổi.
 */

import 'package:flutter/material.dart';

class HeroPage extends StatefulWidget {
  const HeroPage({Key? key}) : super(key: key);

  @override
  _HeroPageState createState() => _HeroPageState();
}

class _HeroPageState extends State<HeroPage> {
  String imageUrlByKey(int key) {
    return "https://picsum.photos/300/300?image=${key + 200}";
  }

  @override
  Widget build(BuildContext context) {
    final gridBuilder = GridView.builder(
        itemCount: 100,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, position) {
          return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ImageDetail(imageUrlByKey(position));
              }));
            },
            child: Hero(
              tag: imageUrlByKey(position),
              child: Image.network(imageUrlByKey(position)),
            ),
          );
        });
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Example'),
      ),
      body: Center(child: gridBuilder,),
    );
  }
}

class ImageDetail extends StatelessWidget {
  final String imageUrl;
  ImageDetail(this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Preview'),
      ),
      body: Container(
        width: double.infinity,
        child: Hero(
          tag: imageUrl,
          child: Image.network(imageUrl),
        ),
      ),
    );
  }
}
