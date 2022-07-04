import 'package:flutter/material.dart';

class SwitchCheckBoxPage extends StatefulWidget {
  final String title;

  const SwitchCheckBoxPage({Key? key, required this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SwitchCheckBoxState();
}

class _SwitchCheckBoxState extends State<SwitchCheckBoxPage> {
  bool _switchValue = false;
  bool? _checkboxValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Switch(
                    value: _switchValue,
                    onChanged: (value) {
                      setState(() {
                        _switchValue = value;
                      });
                    }),
                Text(_switchValue ? '开' : '关')
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                /// checkbox可以有三个状态，true，false，null
                Checkbox(
                    value: _checkboxValue,
                    tristate: true,
                    onChanged: (value) {
                      setState(() {
                        _checkboxValue = value;
                      });
                    }),
                Text(_checkboxValue != null
                    ? _checkboxValue == true
                        ? '选中'
                        : '未选中'
                    : '忽略'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
