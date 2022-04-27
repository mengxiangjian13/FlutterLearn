import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  final String title;

  const ButtonPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              'ElevatedButton',
              textScaleFactor: 2,
            ),
          ),
          ElevatedButton(onPressed: () {}, child: const Text('Normal')),
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              'TextButton',
              textScaleFactor: 2,
            ),
          ),
          TextButton(onPressed: () {}, child: const Text('Normal')),
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              'OutlineButton',
              textScaleFactor: 2,
            ),
          ),
          OutlinedButton(onPressed: () {}, child: const Text('Normal')),
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              'IconButton',
              textScaleFactor: 2,
            ),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.thumb_up)),
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              '带图标的按钮',
              textScaleFactor: 2,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(onPressed: (){},
                  icon: const Icon(Icons.send),
                  label: const Text('发送')),
              TextButton.icon(onPressed: () {},
                  icon: const Icon(Icons.info),
                  label: const Text('详情')),
              OutlinedButton.icon(onPressed: () {},
                  icon: const Icon(Icons.add),
                  label: const Text('添加'))
            ],
          )
        ],
      ),
    );
  }
}
