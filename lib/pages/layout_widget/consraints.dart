import 'package:flutter/material.dart';

class ConstraintLayoutPage extends StatelessWidget {
  final String title;
  const ConstraintLayoutPage({Key? key,  required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView(
        children: [
          Text('data'),
        ],
      ),
    );
  }
}