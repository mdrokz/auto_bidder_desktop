import 'dart:convert';
import 'dart:io';
import 'dart:ui';

import 'package:auto_bidder/drawer.dart';
import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:auto_bidder/grpc/main.pb.dart';
import 'package:auto_bidder/grpc/main.pbgrpc.dart';
import 'package:auto_bidder/channel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auto Bidder',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(title: 'Auto Bidder'),
    );
  }
}

class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class LoginCred {
  String username = "";
  String password = "";
}

class _LoginPageState extends State<LoginPage> {
  Channel<AuthClient> authStub;
  LoginCred loginCred = LoginCred();
  bool isAuthenticate = false;
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  // Projects projects;

  Future<void> init() async {
    var channel =
        Channel<AuthClient>(AuthClient(Channel.getClientChannel(50053)), null);

    setState(() {
      authStub = channel;
    });

    final status = (await channel.service
            .checkStatus(AuthEmpty(), options: channel.callOptions))
        .isCookie;
    setState(() {
      isAuthenticate = status;
    });
  }

  Future<bool> getAuthenticationStatus() async {
    return (await authStub.service
            .checkStatus(AuthEmpty(), options: authStub.callOptions))
        .isCookie;
  }

  @override
  initState() {
    super.initState();
    init();
  }

  Widget usernameField() {
    return TextField(
        obscureText: false,
        style: style,
        onChanged: (username) {
          setState(() {
            loginCred.username = username;
          });
        },
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Username",
          // border:
          //     OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
        ));
  }

  Widget passwordField() {
    return TextField(
        obscureText: true,
        style: style,
        onChanged: (password) {
          setState(() {
            loginCred.password = password;
          });
        },
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Password",
          // border:
          //     OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
        ));
  }

  Widget loginButton() {
    return Material(
      elevation: 5.0,
      // borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff01A0C7),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () async {
          var xpath = jsonDecode(await File("./xpath.json").readAsString());
          authStub.service.authenticate(
              AuthCredentials(
                  username: loginCred.username,
                  password: loginCred.password,
                  usernameInput: xpath["usernameInput"],
                  passwordInput: xpath["passwordInput"],
                  buttonInput: xpath["loginButtonInput"]),
              options: authStub.callOptions);
        },
        child: Text("Login",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
  }

  List<Widget> loginForm() {
    if (isAuthenticate) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => HomePage(
                    title: widget.title,
                  )));

      return [];
    } else {
      return ([
        usernameField(),
        SizedBox(height: 25.0),
        passwordField(),
        SizedBox(height: 35.0),
        loginButton(),
        SizedBox(height: 15.0),
      ]);
    }
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
          centerTitle: true,
          //leading: ,
        ),
        body: Center(
            child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              children: loginForm(),
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ),
        )),
        drawer: CustomDrawer());
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Channel<BidClient> bidStub;
  Channel<ProjectClient> projectStub;
  Map<String, String> xpathInfo = new Map();
  List<Projects> projects = [];
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  Future<void> init() async {
    var file = File("./xpath.json");

    var xpathJson = jsonDecode(await file.readAsString());

    setState(() {
      xpathInfo["bidAmountInput"] = xpathJson["bidAmountInput"];
      xpathInfo["projectDeliveryInput"] = xpathJson["projectDeliveryInput"];
      xpathInfo["projectDescriptionInput"] =
          xpathJson["projectDescriptionInput"];
      xpathInfo["bidButtonInput"] = xpathJson["bidButtonInput"];
    });

    setState(() {
      bidStub =
          Channel<BidClient>(BidClient(Channel.getClientChannel(50051)), null);
      projectStub = Channel<ProjectClient>(
          ProjectClient(Channel.getClientChannel(50052)), null);
    });
    file = null;
    getProjects();
  }

  Future<void> getProjects() async {
    try {
      var projectStream = projectStub.service
          .getProjects(ProjectEmpty(), options: projectStub.callOptions);

      var p = await projectStream.toList();
      setState(() {
        projects = p;
      });

      // subscribeToProject();
    } catch (e) {
      print(e);
    }
  }

  void subscribeToProject() {
    var projectListener = projectStub.service
        .subscribeToProject(ProjectEmpty(), options: projectStub.callOptions)
        .listen((value) {
      print(value);
      setState(() {
        projects.insert(0, value);
      });
    });
  }

  void bidOnProject(String url) {
    var status = projectStub.service.bidOnProject(
        ProjectInfo(
          link: url,
          bidAmount: "",
          projectDelivery: "",
          projectDescription:
              "Hello i am a full stack developer with 5+ years of experience in Web Development and i have experience in MERN and MEAN Stack, i will be able to accomplish your task.",
          bidAmountPath: xpathInfo["bidAmountInput"],
          projectDeliveryPath: xpathInfo["projectDeliveryInput"],
          projectDescriptionPath: xpathInfo["projectDescriptionInput"],
          bidButtonPath: xpathInfo["bidButtonInput"],
        ),
        options: projectStub.callOptions);

    print(status);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    init();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        centerTitle: true,
        // leading: ,
      ),
      body: projects.length > 0
          ? new ListView.builder(
              padding: const EdgeInsets.all(10.0),
              itemCount: projects.length,
              itemBuilder: (context, i) {
                return ListTile(
                  leading: Material(
                    elevation: 3.0,
                    // borderRadius: BorderRadius.circular(30.0),
                    color: Colors.green,
                    child: MaterialButton(
                      minWidth: 40,
                      child: Text(
                        "Bid",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      onPressed: () => bidOnProject(projects[i].link),
                      padding: EdgeInsets.fromLTRB(30.0, 15.0, 20.0, 15.0),
                    ),
                  ),
                  title: Text(projects[i].title),
                );
              })
          : Center(
              child: CircularProgressIndicator(),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
