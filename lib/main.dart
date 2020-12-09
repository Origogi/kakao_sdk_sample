import 'package:flutter/material.dart';
import 'package:kakao_flutter_sdk/all.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: KakaoLoginText(),
    );
  }
}

class KakaoLoginText extends StatefulWidget {
  @override
  _KakaoLoginTextState createState() => _KakaoLoginTextState();
}

class _KakaoLoginTextState extends State<KakaoLoginText> {
  @override
  void initState() {
    super.initState();

    KakaoContext.clientId = "276149c5b6a7ec7b89af7ebc8931e7de";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Kako Test app')),
    );
  }
}
