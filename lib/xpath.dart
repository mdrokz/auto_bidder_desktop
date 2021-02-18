import 'dart:ui';

import 'package:flutter/material.dart';

class InputInfo {
  TextEditingController controller;
  void Function(String) onChanged;
  String hintText = "";

  InputInfo(this.controller, this.hintText, this.onChanged) {}
}

class XpathWidget extends StatefulWidget {
  XpathWidget({Key key, this.inputInfo}) : super(key: key);

  InputInfo inputInfo;

  @override
  _XpathWidgetState createState() => _XpathWidgetState(this.inputInfo);
}

class _XpathWidgetState extends State<XpathWidget> {
  InputInfo inputInfo;

  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  _XpathWidgetState(this.inputInfo) {}

  Widget genericInput() {
    return TextField(
        obscureText: false,
        style: style,
        controller: inputInfo.controller,
        onChanged: inputInfo.onChanged,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: inputInfo.hintText,
          // border:
          //     OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
        ));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return genericInput();
  }
}
