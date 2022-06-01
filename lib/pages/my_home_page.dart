import 'package:flutter/material.dart';
import 'package:flutter_learn/pages/foundation_widget//foundation_widget.dart';
import 'package:flutter_learn/pages/layout_widget/layout_widget_page.dart';

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key? key, required this.title}) : super(key: key);

  final List<String> contents = ['基础组件', '布局类组件'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('${index + 1}: ${contents[index]}'),
            onTap: () {
              _tapCell(index, context);
            },
          );
        },
        itemCount: contents.length,
      ),
    );
  }

  void _tapCell(int index, BuildContext context) {
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => FoundationWidgetPage()),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LayoutWidgetPage(title: contents[index])),
        );
        break;
    }
  }
}
