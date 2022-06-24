import 'package:flutter/material.dart';

class AlignLayoutPage extends StatelessWidget {
  final String title;
  const AlignLayoutPage({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.red
            ),
            child: Align(
              heightFactor: 2,
              alignment: Alignment.topRight,
              child: FlutterLogo(
                size: 60,
              ),
            ),
          ),
          DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.yellow
            ),
            child: Align(
              widthFactor: 2,
              heightFactor: 2,
              alignment: Alignment.bottomRight,
              child: FlutterLogo(
                size: 60,
              ),
            ),
          )
        ],
      ),
    );
  }
}