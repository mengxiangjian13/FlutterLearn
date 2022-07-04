import 'package:flutter/material.dart';
import 'package:flutter_learn/pages/container_widget/padding_widget.dart';

class ContainerWidgetPage extends StatelessWidget {
  final String title;
  ContainerWidgetPage({Key? key, required this.title}) : super(key: key);

  final List<String> contents = ['Padding'];

  void _tapCell(int index, BuildContext context) {
    switch (index) {
      case 0:
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PaddingWidgetPage(title: contents[index]))
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
          itemCount: contents.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text('${index + 1}: ${contents[index]}'),
              onTap: () {
                _tapCell(index, context);
              },
            );
          }),
    );
  }
}
