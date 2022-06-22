import 'package:flutter/material.dart';

class WrapLayoutPage extends StatelessWidget {
  final String title;
  const WrapLayoutPage({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Wrap(
        direction: Axis.horizontal, // 水平方向
        spacing: 10,
        runSpacing: 5,
        alignment: WrapAlignment.center,
        children: const [
          Chip(
            label: Text('Meng Xiangjian'),
            avatar: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text('M'),
            ),
          ),
          Chip(
            label: Text('Meng Xiangjian'),
            avatar: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text('M'),
            ),
          ),
          Chip(
            label: Text('Meng Xiangjian'),
            avatar: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text('M'),
            ),
          ),
          Chip(
            label: Text('Meng Xiangjian'),
            avatar: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text('M'),
            ),
          ),
          Chip(
            label: Text('Meng Xiangjian'),
            avatar: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text('M'),
            ),
          )
        ],
      ),
    );
  }
}
