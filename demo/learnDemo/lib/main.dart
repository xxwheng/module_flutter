import 'package:flutter/material.dart';
import 'pages/login.dart';
import './member_index.dart';
import 'package:oktoast/oktoast.dart';
import 'pages/top_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return OKToast(
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: new ThemeData(
            primarySwatch: Colors.blue,
        ),
        home: TopPage(),
        debugShowCheckedModeBanner: false,
    ));
  }
}
