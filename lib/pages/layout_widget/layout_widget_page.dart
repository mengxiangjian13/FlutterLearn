import 'package:flutter/material.dart';
import 'package:flutter_learn/pages/layout_widget/constraints.dart';
import 'package:flutter_learn/pages/layout_widget/row_layout.dart';
import 'package:flutter_learn/pages/layout_widget/column_layout.dart';
import 'package:flutter_learn/pages/layout_widget/flex_layout.dart';
import 'package:flutter_learn/pages/layout_widget/wrap_layout.dart';
import 'package:flutter_learn/pages/layout_widget/flow_layout.dart';

class LayoutWidgetPage extends StatelessWidget {
  final String title;
  LayoutWidgetPage({Key? key, required this.title}) : super(key: key);
  final List<String> contents = [
    'Constrains',
    'Row',
    'Column',
    'Flex',
    'Wrap',
    'Flow'
  ];

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
              _tap(index, context);
            },
          );
        },
        itemCount: contents.length,
      ),
    );
  }

  _tap(int index, BuildContext context) {
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ConstraintLayoutPage(title: contents[index]))
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => RowLayoutPage(title: contents[index]))
        );
        break;
      case 2:
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ColumnLayoutPage(title: contents[index]))
        );
        break;
      case 3:
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FlexLayoutPage(title: contents[index]))
        );
        break;
      case 4:
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => WrapLayoutPage(title: contents[index]))
        );
        break;
      case 5:
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FlowLayoutPage(title: contents[index]))
        );
        break;
    }
  }
}
