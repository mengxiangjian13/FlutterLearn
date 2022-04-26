import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TextStylePage extends StatelessWidget {
  final String title;

  const TextStylePage({Key? key, required this.title}) : super(key: key);

  void _tap() {
    print('open mengxiangjian.com');
  }

  @override
  Widget build(BuildContext context) {
    TapGestureRecognizer tap = TapGestureRecognizer();
    tap.onTap = _tap;
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView(
        children: [
          const Text(
            'Text',
            textScaleFactor: 2, // 当前字体大小的缩放因子
          ),
          const Text(
            'hello, world!',
            textAlign: TextAlign.center,
          ),
          Text(
            "hello, world! I'm Leo. "*16, // 16遍字符串连接在一起
            maxLines: 1,
            overflow: TextOverflow.ellipsis, // 截断方式，截断处 ...
          ),
          const Text(
            'hello, world!',
            textScaleFactor: 1.5, // 当前字体大小的缩放因子
          ),
          const Padding(padding: EdgeInsets.only(top: 20)),
          const Text(
            'TextStyle',
            textScaleFactor: 2,
          ),
          const Text(
            'hello, world!',
            style: TextStyle(
              color: Colors.blue, // 字体颜色
              fontSize: 16,
              height: 1.2, // 行高。是一个因子，为默认行高的倍数。
              fontFamily: "Courier",
              backgroundColor: Colors.yellow,
              decoration: TextDecoration.underline, // 下划线
              decorationStyle: TextDecorationStyle.dashed, // 下划线为虚线
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 20)),
          const Text(
            'TextSpan',
            textScaleFactor: 2,
          ),
          Text.rich( // Text.rich 包裹
            // TextSpan，类似AttributedString，富文本。还可以添加手势。
             TextSpan(
              children: [
                const TextSpan(
                  text: 'hello, ',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text: 'click mengxiangjian.com',
                  style: const TextStyle(
                    color: Colors.blue,
                  ),
                  recognizer: tap,
                )
              ]
            )
          )
        ],
      ),
    );
  }
}
