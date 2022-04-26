import 'package:flutter/material.dart';
import 'package:flutter_learn/pages/foundation_widget/text_style.dart';

class FoundationWidgetPage extends StatelessWidget {
  final List<String> contents = ['文本及样式'];

  FoundationWidgetPage({Key? key}) : super(key: key);

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
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          TextStylePage(title: contents[index])));
            },
          );
        },
        itemCount: contents.length,
      ),
    );
  }
}
