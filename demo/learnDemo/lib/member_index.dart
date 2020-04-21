
import 'package:learnDemo/utils/xx_net/http/xx_http_err.dart';
import 'package:learnDemo/utils/xx_net/xx_network.dart';
import 'package:rxdart/rxdart.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:learnDemo/models/member_index.dart';

class MemberIndexTest {
  final String methodName = "MemberIndex";
  final String memberId = "41";
  final String version = "1.0";
  final String token = "6536e96a4647657a87fe8c75968aba43";
  final String platform = "1";

  void shared() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString("token", token);
      await prefs.setString('member_id', memberId);
      print('seting');
    } catch (e) {
      print('setinge: $e');
    }
    
  }

  PublishSubject req() {
    var ob = PublishSubject();
    XXNetwork.shared
      .post(params: {'methodName':methodName})
      .then((value) => MemberIndex.fromJson(value))
      .then((data) {
        ob.add(data);
        print(data.memberOrder.startTime);
    }).catchError((err) {
      print("catchError: $err");
      
    }).whenComplete(() {
      print("over");
    });
    return ob;
  }

  void request() async {
    XXNetwork.shared
      .post(params: {'methodName':methodName})
      .then((value) => MemberIndex.fromJson(value))
      .then((data) {
        print(data.memberOrder.startTime);
    }).catchError((err) {
      print("catchError: $err");
      
    }).whenComplete(() {
      print("over");
    });
  }
}