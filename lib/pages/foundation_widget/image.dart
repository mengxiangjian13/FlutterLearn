import 'package:flutter/material.dart';

/*
图片view一般来讲是需要制定width和height的，因为图片有大有小，size不确定，所以不能任其自动布局。
因为需要设定死frame，所以就用显示mode区别，在Image widget里面就是fit参数。
fill: 撑满，不成比例
cover: 全部覆盖，成比例，aspect fill
contain: aspect fit
* */

class ImagePage extends StatelessWidget {
  final String title;
  const ImagePage({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    AssetImage img = const AssetImage('images/1.png');
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView(
        children: <Image>[
          Image(
            image: img,
            width: 100,
            height: 50,
            fit: BoxFit.fill,
          ),
          Image(
            image: img,
            width: 100,
            height: 50,
            fit: BoxFit.contain,
          ),
          Image(
            image: img,
            width: 100,
            height: 50,
            fit: BoxFit.cover,
          ),
          Image(
            image: img,
            width: 100,
            height: 50,
            fit: BoxFit.none,
          ),
          Image(
            image: img,
            width: 100,
            height: 200,
            repeat: ImageRepeat.repeatY,
          ),
          Image.network('https://avatars2.githubusercontent.com/u/20411648?s=460&v=4', width: 100,)
        ].map((e) {
          return Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: e,
              ),
              Text(e.fit.toString())
            ],
          );
        }).toList(),
      ),
    );
  }
}
