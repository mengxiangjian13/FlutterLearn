import 'package:flutter/material.dart';

class PaddingWidgetPage extends StatelessWidget {
  final String title;
  const PaddingWidgetPage({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Left 20'
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Text(
            'vertical 20'
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: Text(
            'Left Top Right Bottom are 20'
            ),
          )
        ],
      )
    );
  }
}