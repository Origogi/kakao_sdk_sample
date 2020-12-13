import 'package:flutter/material.dart';
import 'package:kakao_flutter_sdk/all.dart';

class KakaoLogin extends StatefulWidget {
  @override
  _KakaoLoginState createState() => _KakaoLoginState();
}

class _KakaoLoginState extends State<KakaoLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kakao Login'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: _loginWithKakao,
          child: Text('Try to login kakao talk'),
        ),
      ),
    );
  }

  _loginWithKakao() async {
    try {
      var code = await AuthCodeClient.instance.request();
      await _issueAccessToken(code);
    } catch (e) {
      print(e);
    }
  }

  _issueAccessToken(String authCode) async {
    try {
      var token = await AuthApi.instance.issueAccessToken(authCode);
      AccessTokenStore.instance.toStore(token);
      print(token);
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoginDone()),
      );
    } catch (e) {
      print("error on issuing access token: $e");
    }
  }
}

class LoginDone extends StatelessWidget {
  Future<void> _getUser() async {
    try {
      User user = await UserApi.instance.me();
      print(user.toString());
    } on KakaoAuthException catch (e) {} catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    _getUser();

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text('Login Success!'),
        ),
      ),
    );
  }
}