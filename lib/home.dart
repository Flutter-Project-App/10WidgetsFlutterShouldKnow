import 'package:flutter/material.dart';
import 'package:widgets_flutter_should_know/part1/10_streambuilder_page.dart';
import 'package:widgets_flutter_should_know/part1/1_safearea_page.dart';
import 'package:widgets_flutter_should_know/part1/2_expanded_page.dart';
import 'package:widgets_flutter_should_know/part1/3_wrap_page.dart';
import 'package:widgets_flutter_should_know/part1/4_opacity_page.dart';
import 'package:widgets_flutter_should_know/part1/5_futurebuilder_page.dart';
import 'package:widgets_flutter_should_know/part1/6_floatingactionbutton_page.dart';
import 'package:widgets_flutter_should_know/part1/7_pageview_page.dart';
import 'package:widgets_flutter_should_know/part1/8_table_page.dart';
import 'package:widgets_flutter_should_know/part1/9_fadeinimage_page.dart';
import 'package:widgets_flutter_should_know/part2/10_positioned_page.dart';
import 'package:widgets_flutter_should_know/part2/1_cliprrect_page.dart';
import 'package:widgets_flutter_should_know/part2/2_hero_page.dart';
import 'package:widgets_flutter_should_know/part2/3_custom_paint_page.dart';
import 'package:widgets_flutter_should_know/part2/4_tooltip_page.dart';
import 'package:widgets_flutter_should_know/part2/5_fittedbox_page.dart';
import 'package:widgets_flutter_should_know/part2/6_layoutbuilder_page.dart';
import 'package:widgets_flutter_should_know/part2/7_absorbpointer_page.dart';
import 'package:widgets_flutter_should_know/part2/8_transform_page.dart';
import 'package:widgets_flutter_should_know/part2/9_align_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Widgets'),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              children: [
                Text(
                  'PART I',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => SafeAreaPage())),
                  child: Text('SafeArea'),
                  style: ElevatedButton.styleFrom(primary: Colors.blue),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ExpandedPage())),
                  child: Text('Expanded'),
                  style: ElevatedButton.styleFrom(primary: Colors.red),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => WrapPage())),
                  child: Text('Wrap'),
                  style: ElevatedButton.styleFrom(primary: Colors.green),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => OpacityPage())),
                  child: Text('Opacity'),
                  style: ElevatedButton.styleFrom(primary: Colors.orange),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => FutureBuilderPage())),
                  child: Text('FutureBuilder'),
                  style: ElevatedButton.styleFrom(primary: Colors.amber),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => FloatingActionButtonPage())),
                  child: Text('FloatingActionButton'),
                  style: ElevatedButton.styleFrom(primary: Colors.black),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => PageViewPage())),
                  child: Text('PageView'),
                  style: ElevatedButton.styleFrom(primary: Colors.transparent),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => TablePage())),
                  child: Text('Table'),
                  style: ElevatedButton.styleFrom(primary: Colors.grey),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => FadeInImagePage())),
                  child: Text('FadeInImage'),
                  style: ElevatedButton.styleFrom(primary: Colors.brown),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => StreamBuilderPage())),
                  child: Text('StreamBuilder'),
                  style: ElevatedButton.styleFrom(primary: Colors.cyan),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  'PART II',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                OutlinedButton(
                    onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ClipRRectPage())),
                    child: Text(
                      'ClipRRect',
                      style: TextStyle(color: Colors.cyan),
                    )),
                OutlinedButton(
                    onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => HeroPage())),
                    child: Text(
                      'Hero',
                      style: TextStyle(color: Colors.indigo),
                    )),
                OutlinedButton(
                    onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => CustomPaintPage())),
                    child: Text(
                      'CustomPaint',
                      style: TextStyle(color: Colors.deepOrange),
                    )),
                OutlinedButton(
                    onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => TooltipPage())),
                    child: Text(
                      'Tooltip',
                      style: TextStyle(color: Colors.lightGreen),
                    )),
                OutlinedButton(
                    onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => FittedBoxPage())),
                    child: Text(
                      'FittedBox',
                      style: TextStyle(color: Colors.black),
                    )),
                OutlinedButton(
                    onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => LayoutBuilderPage())),
                    child: Text(
                      'LayoutBuilder',
                      style: TextStyle(color: Colors.red),
                    )),
                OutlinedButton(
                    onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => AbsorbPointerPage())),
                    child: Text(
                      'AbsorbPointer',
                      style: TextStyle(color: Colors.blueAccent),
                    )),
                OutlinedButton(
                    onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => TransformPage())),
                    child: Text(
                      'Transform',
                      style: TextStyle(color: Colors.purple),
                    )),
                OutlinedButton(
                    onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => AlignPage())),
                    child: Text(
                      'Align',
                      style: TextStyle(color: Colors.grey),
                    )),
                OutlinedButton(
                    onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => PositionedPage())),
                    child: Text(
                      'Positioned',
                      style: TextStyle(color: Colors.orange),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
