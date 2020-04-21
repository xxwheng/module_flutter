import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:learnDemo/member_index.dart';

import 'package:learnDemo/base_mvp/mvp.dart';
import 'package:oktoast/oktoast.dart';
import 'package:rxdart/rxdart.dart';



class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _psdController = TextEditingController();
  bool _secureText = false;

  @override
  void initState() {
    _nameController.addListener(() { });
    _psdController.addListener(() { });

    MemberIndexTest().shared();

    super.initState();
  }

  bool _isValidLogin() {
    return !(_nameController.text.isEmpty || _psdController.text.isEmpty);
  }

  void changePsdSecureText() {
    setState(() {
      this._secureText = !this._secureText;
    });
  }


  void loginAction() async {
    // String name = _nameController.text;
    // String password = _psdController.text;
    // showToast("msg");
    // MemberIndexTest()..request();

    // PublishSubject _subject = PublishSubject<String>();
    // ReplaySubject _subject = ReplaySubject<String>();
    // _subject.add("event");
    // _subject.add("2222eeee");
    // _subject.listen((value) { print('1111 -> $value'); });
    
    // _subject.listen((value) { print('22222 -> $value'); });
  
    // _subject.close();
    // var obs = Observable(Stream.fromIterable([1,2,3,4,5]));
    // Observable

    MemberIndexTest().req().listen((value) { print("Ob: ${value.username}"); });
  }

  Widget _buildLoginButton() {
    return Container(
      margin: EdgeInsets.only(top:20),
      child: InkWell(
        child: Center(child: Text("登录")),
        onTap: loginAction ,
      ),
    );
  }

  TextFormField _buildNameTextField() {
    return TextFormField(
      controller: _nameController,
      decoration: InputDecoration(
        labelText: "账号",
        hintText: "请输入",
        suffixIcon: GestureDetector(
          child: Icon(_nameController.text.isEmpty?null:Icons.clear),
          onTap: () => _nameController.clear(),
        )
      ),
    );
  }

  TextFormField _buildPsdTextField() {
    return TextFormField(
      obscureText: this._secureText,
      controller: _psdController,
      decoration: InputDecoration(
        labelText: "密码",
        hintText: "请输入",
        suffixIcon: GestureDetector(
          child: Icon(this._secureText?Icons.visibility_off:Icons.visibility),
          onTap: this.changePsdSecureText,
        )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top:20),
            child: _buildNameTextField(),
          ),
          Container(
            margin: EdgeInsets.only(top:20),
            child: _buildPsdTextField(),
          ),
          _buildLoginButton()
        ],
      ),
    );
  }
}