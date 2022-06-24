import 'package:flutter/material.dart';

class StackLayoutPage extends StatelessWidget {
  final String title;
  const StackLayoutPage({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ConstrainedBox(
        constraints: const BoxConstraints.expand(),
        child: Stack(
          alignment: Alignment.center, // 子widget没有写明frame的方向（横或竖）居中，
          fit: StackFit.expand, // 如果在横竖方向都没有写明frame的子widget，可以无限扩大。
          children: const [
            Positioned(
              left: 20,
              child: Text(
                  'Hello, world!'
              ),
            ),
            Positioned(
              child: Text(
                'Hello, world!',
                style: TextStyle(
                  color: Colors.white,
                  backgroundColor: Colors.red
                ),
              ),
            ),
            Positioned(
              top: 20,
              child: Text(
                'Hello, world!'
              ),
            )
          ],
        ),
      ),
    );
  }
}