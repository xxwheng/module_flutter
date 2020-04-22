import 'package:flutter/material.dart';
import 'pages/login.dart';
import './member_index.dart';
import 'package:oktoast/oktoast.dart';
import 'pages/top_page.dart';
import 'pages/blocprovider.dart';
import 'pages/goods.dart';
import 'pages/yuesao_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return OKToast(
        child: BlocProvider(
          child: MaterialApp(
            title: 'Flutter Demo',
            theme: new ThemeData(
              primaryColor: Colors.white
            ),
            home: YueSaoListPage(),
            debugShowCheckedModeBanner: false,
          ),
        ));
  }
}
