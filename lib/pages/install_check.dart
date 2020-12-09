import 'package:flutter/material.dart';
import 'package:kakao_flutter_sdk/all.dart';

class KakaoInstalledPage extends StatefulWidget {
  @override
  _KakaoInstalledPageState createState() => _KakaoInstalledPageState();
}

class _KakaoInstalledPageState extends State<KakaoInstalledPage> {
  var answer = "unkown";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Kako Test app')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Is Kakao talk installed??",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 50,
            ),
            Text(answer),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              onPressed: () async {
                final installed = await isKakaoTalkInstalled();

                setState(() {
                  if (installed) {
                    answer = "installed";
                  } else {
                    answer = "not installed";
                  }
                });
              },
              child: Text('Check'),
            )
          ],
        ),
      ),
    );
  }
}
