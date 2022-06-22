import 'dart:math';

import 'package:flutter/material.dart';

class FlowLayoutPage extends StatelessWidget {
  final String title;
  const FlowLayoutPage({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const Center(
        child: Text('So complicated!'),
      ),
    );
  }
}
