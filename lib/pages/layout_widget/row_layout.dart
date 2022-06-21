import 'package:flutter/material.dart';

class RowLayoutPage extends StatelessWidget {

  final String title;

  const RowLayoutPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max, // 默认，能多宽就多宽
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Hello, world!'),
              Text('I am meng')
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min, // row宽度等于内容宽度
            mainAxisAlignment: MainAxisAlignment.center, // 在mainAxisSize==min时，对齐无意义
            children: const [
              Text('Hello, world!'),
              Text('I am meng')
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            textDirection: TextDirection.rtl,
            children: const [
              Text('Hello, world!'),
              Text('I am meng')
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            verticalDirection: VerticalDirection.up, // 从下到上，实现底部对齐
            children: const [
              Text('Hello, world!', style: TextStyle(fontSize: 20),),
              Text('I am meng')
            ],
          )
        ],
      ),
    );
  }
}