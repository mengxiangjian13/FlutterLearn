import 'package:flutter/material.dart';

class FlexLayoutPage extends StatelessWidget {
  final String title;

  const FlexLayoutPage({Key? key, required this.title}) : super(key: key);

  Widget _rectWidget(Color color, {int flex = 1}) {
    return Expanded(
      flex: flex,
      child: ConstrainedBox(
        constraints: const BoxConstraints(minHeight: 50),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: color,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Row(
          children: [
            const Text('Hello, world!'),
            _rectWidget(Colors.red),
            _rectWidget(Colors.yellow, flex: 2),
            _rectWidget(Colors.blue, flex: 3)
          ],
        ));
  }
}
