import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  final String title;
  const FormPage({Key? key, required this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _pwdController = TextEditingController();

  bool _dataValid = false;

  bool _usernameValidate() {
    return _userController.text.trim().isNotEmpty;
  }

  bool _pwdValidate() {
    return _pwdController.text.trim().length >= 6;
  }

  bool _loginEnable() {
    return _usernameValidate() && _pwdValidate();
  }

  @override
  void initState() {
    super.initState();
    _userController.addListener(() {
      setState(() {
        _dataValid = _loginEnable();
      });
    });

    _pwdController.addListener(() {
      setState(() {
        _dataValid = _loginEnable();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            children: [
              TextFormField(
                autofocus: true,
                controller: _userController,
                decoration: const InputDecoration(
                  labelText: '用户名',
                  hintText: '输入用户名',
                  prefixIcon: Icon(Icons.person),
                ),
                validator: (v) {
                  return _usernameValidate() ? null : '用户名不能为空';
                },
              ),
              TextFormField(
                controller: _pwdController,
                decoration: const InputDecoration(
                  labelText: '密码',
                  hintText: '请输入密码',
                  prefixIcon: Icon(Icons.lock),
                ),
                obscureText: true,
                validator: (v) {
                  return _pwdValidate() ? null : '密码不能少于6位';
                },
              ),
              Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: _dataValid
                              ? () {
                                  if (_usernameValidate() && _pwdValidate()) {
                                    if (kDebugMode) {
                                      print('form valid');
                                    }
                                  } else {
                                    if (kDebugMode) {
                                      print('form invalid');
                                    }
                                  }
                                }
                              : null,
                          child: const Text('登录'),
                        ),
                      )
                    ],
                  ))
            ],
          ),
        ));
  }
}
