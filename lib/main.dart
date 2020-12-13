import 'package:flutter/material.dart';
import 'package:kakao_flutter_sdk/all.dart';
import 'package:kakao_sdk_sample/pages/install_check.dart';
import 'package:kakao_sdk_sample/pages/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    KakaoContext.clientId = "276149c5b6a7ec7b89af7ebc8931e7de";

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text("Check to install kakao talk"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => KakaoInstalledPage()),
                );
              },
            ),
            RaisedButton(
              child: Text("Kakao Login"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => KakaoLogin()),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
