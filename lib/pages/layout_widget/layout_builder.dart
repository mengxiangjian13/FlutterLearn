import 'package:flutter/material.dart';

class ResponsiveColumn extends StatelessWidget {
  final List<Widget> children;
  const ResponsiveColumn({Key? key, required this.children}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // 约束宽度小于200，layout一列；约束宽度大于200，layout两列
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth < 200) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: children,
        );
      }
      List<Widget> _children = [];
      for (int i = 0; i < children.length; i += 2) {
        if (i + 1 < children.length) {
          _children.add(Row(
            // mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              children[i],
              children[i + 1],
            ],
          ));
        } else {
          _children.add(children[i]);
        }
      }
      return Column(
        children: _children,
      );
    });
  }
}

class LayoutBuilderPage extends StatelessWidget {
  final String title;
  const LayoutBuilderPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> _children = List.filled(6, const Text('A'));
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 150,
            child: ResponsiveColumn(
              children: _children,
            ),
          ),
          ResponsiveColumn(
            children: _children,
          ),
        ],
      ),
    );
  }
}