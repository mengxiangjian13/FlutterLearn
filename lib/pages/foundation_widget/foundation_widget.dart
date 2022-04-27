import 'package:flutter/material.dart';
import 'package:flutter_learn/pages/foundation_widget/text_style.dart';
import 'package:flutter_learn/pages/foundation_widget/button.dart';

class FoundationWidgetPage extends StatelessWidget {
  final List<String> contents = ['文本及样式', '按钮'];

  FoundationWidgetPage({Key? key}) : super(key: key);

  Widget _pageWidget(int index) {
    if (index == 0) {
      return TextStylePage(title: contents[index]);
    }
    return ButtonPage(title: contents[index]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('基础组件'),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('${index + 1}: ${contents[index]}'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => _pageWidget(index)));
            },
          );
        },
        itemCount: contents.length,
      ),
    );
  }
}
