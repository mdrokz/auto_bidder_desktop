import 'dart:convert';
import 'dart:io';
import 'dart:ui';

import 'package:auto_bidder/xpath.dart';

import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  CustomDrawer({Key key}) : super(key: key);

  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  Map<String, String> xpathInfo = new Map();
  File xpathJson;
  List<Widget> textInputs = [];

  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  initState() {
    super.initState();
    setState(() {
      initMap();
    });
    init();
  }

  Future<void> init() async {
    var file = File('./xpath.json');

    if (await file.exists()) {
      Map<String, dynamic> xpath = jsonDecode(await file.readAsString());

      setState(() {
        xpathJson = file;
        for (String key in xpathInfo.keys) {
          var value = xpath[key];
          xpathInfo[key] = value != null ? value : "";
          textInputs.add(Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(key + "Path"),
          ));
          textInputs.add(XpathWidget(
              inputInfo: InputInfo(
                  TextEditingController(text: xpathInfo[key]), key + "XPath",
                  (value) {
            setState(() {
              xpathInfo[key] = value;
            });
          })));
          textInputs.add(SizedBox(
            height: 20,
          ));
        }
      });
    } else {
      file.writeAsString("{}");
    }
  }

  void initMap() {
    xpathInfo["usernameInput"] = "";
    xpathInfo["passwordInput"] = "";
    xpathInfo["loginButtonInput"] = "";
    xpathInfo["bidAmountInput"] = "";
    xpathInfo["projectDeliveryInput"] = "";
    xpathInfo["projectDescriptionInput"] = "";
    xpathInfo["bidButtonInput"] = "";
  }

  Widget saveButton() {
    return Material(
      elevation: 5.0,
      // borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff01A0C7),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () async {
          var json = jsonEncode({
            'usernameInput': xpathInfo["usernameInput"],
            'passwordInput': xpathInfo["passwordInput"],
            'loginButtonInput': xpathInfo["loginButtonInput"],
            'bidAmountInput': xpathInfo["bidAmountInput"],
            'projectDeliveryInput': xpathInfo["projectDeliveryInput"],
            'projectDescriptionInput': xpathInfo["projectDescriptionInput"],
            'bidButtonInput': xpathInfo["bidButtonInput"]
          });
          await xpathJson.writeAsString(json);
        },
        child: Text("Save",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Settings'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ...textInputs,
          SizedBox(
            height: 40,
          ),
          saveButton()
        ],
      ),
    );
  }
}
