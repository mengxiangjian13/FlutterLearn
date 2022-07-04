import 'package:flutter/material.dart';

class ColumnLayoutPage extends StatelessWidget {
  final String title;
  const ColumnLayoutPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [Text('hi'), Text('Hello, world!')],
      ),
    );
  }
}
