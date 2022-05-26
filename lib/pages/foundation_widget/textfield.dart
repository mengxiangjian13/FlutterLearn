import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class TextFieldPage extends StatefulWidget {

  const TextFieldPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<StatefulWidget> createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {

  final TextEditingController _controller = TextEditingController();
  FocusNode focusNode1 = FocusNode();
  FocusNode focusNode2 = FocusNode();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // 监听输入框文字变化
    _controller.addListener(() {
      if (kDebugMode) {
        print('username text: ${_controller.text}');
      }
    });

    focusNode1.addListener(() {
      // 监听焦点获得
      if (kDebugMode) {
        print('focus1 获得焦点变化: ${focusNode1.hasFocus}');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _titleWidget('Login Input'),
          TextField(
            autofocus: true, // 自动得到焦点
            controller: _controller,
            decoration: const InputDecoration(
              labelText: '用户名',
              hintText: '用户名或邮箱',
              prefixIcon: Icon(Icons.person),
            ),
            focusNode: focusNode1,
          ),
          TextField(
            decoration: const InputDecoration(
              labelText: '密码',
              hintText: '您的登录密码',
              prefixIcon: Icon(Icons.lock),
            ),
            obscureText: true,
            focusNode: focusNode2,
          ),
          _titleWidget('Focus Control'),
          Container(
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(onPressed: (){
                  if (focusNode1.hasFocus) {
                    FocusScope.of(context).requestFocus(focusNode2);
                  } else {
                    FocusScope.of(context).requestFocus(focusNode1);
                  }
                }, child: const Text('移动焦点')),
                TextButton(onPressed: (){
                  focusNode1.unfocus();
                  focusNode2.unfocus();
                }, child: const Text('隐藏键盘')),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _titleWidget(String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 20, 0, 20),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }

}