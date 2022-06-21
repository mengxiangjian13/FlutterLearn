import 'package:flutter/material.dart';

class ConstraintLayoutPage extends StatelessWidget {
  final String title;
  const ConstraintLayoutPage({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              const Text(
                'ConstrainedBox',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(minHeight: 50, minWidth: 100),
                child: Container(
                  height: 20, // 此处设定高度无用，被父节点constrainedbox最小高度覆盖
                  child: const DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
              const Text(
                'Sized Box',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                width: 80,
                height: 80,
                child: DecoratedBox(
                  decoration: BoxDecoration(color: Colors.red),
                ),
              )
            ],
          ),
        ));
  }
}
