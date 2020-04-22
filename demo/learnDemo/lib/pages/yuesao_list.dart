import 'package:adaptui/adaptui.dart';
import 'package:flutter/material.dart';

class SkillerModel {
  String name = "李桥秋";
  String auth = "家家母婴学院认证";
  String thumb = "http://upload.jjys168.com//jiazhen_upload/20191111/15734639675dc9279fa8f84.jpg";
  String level = "六星月嫂";
  String desc = "李姐2009年开始做月嫂,带过60多个宝宝,拥有专业的母婴护理经验过60多个宝宝,拥有专业的母婴护理经验。";
  String price = "15800";
  String unit = "26天";
  String score = "5分";
}

class YueSaoListPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    SkillerModel skillerModel = SkillerModel();

    return Scaffold(
      body: 
    Center(
      
      child: Container(
        margin: EdgeInsets.only(top: AdaptUI.rpx(20), left: AdaptUI.rpx(30), right: AdaptUI.rpx(30)),
        // width: AdaptUI.rpx(690),
        height: AdaptUI.rpx(260),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(AdaptUI.rpx(10))
        ),
        child: Row(
          // mainAxisSize: MainAxisSize.max,
          // direction: Axis.horizontal,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left:AdaptUI.rpx(30), top: AdaptUI.rpx(30)),
              width: AdaptUI.rpx(130),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: AdaptUI.rpx(130),
                    height: AdaptUI.rpx(130),
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xAACC99CC)),
                      borderRadius: BorderRadius.circular(AdaptUI.rpx(65))
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: AdaptUI.rpx(120),
                        height: AdaptUI.rpx(120),
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFFCC99CC)),
                          borderRadius: BorderRadius.circular(AdaptUI.rpx(60))
                        ),
                        child: ClipOval(child: Image(width: AdaptUI.rpx(120), fit: BoxFit.cover, image: NetworkImage(skillerModel.thumb))),
                      ),
                    ),
                  ),
                  ClipOval(child: Container(margin: EdgeInsets.only(top: AdaptUI.rpx(6)), width: AdaptUI.rpx(8),height: AdaptUI.rpx(8), color: Color(0xEECCC99CC),),),
                  ClipOval(child: Container(margin: EdgeInsets.only(top: AdaptUI.rpx(6)), width: AdaptUI.rpx(6),height: AdaptUI.rpx(6), color: Color(0xDDCCC99CC),),),
                  ClipOval(child: Container(margin: EdgeInsets.only(top: AdaptUI.rpx(6), bottom: AdaptUI.rpx(4)), width: AdaptUI.rpx(6),height: AdaptUI.rpx(6), color: Color(0xAACCC99CC),),),
                  Text(skillerModel.level, style: TextStyle(color: Color(0xFFCC3399), fontWeight: FontWeight.bold, fontSize: AdaptUI.rpx(28)),)
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: AdaptUI.rpx(35), left:AdaptUI.rpx(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(skillerModel.name, style: TextStyle(color: Color(0xFF333333), fontSize: AdaptUI.rpx(32), fontWeight: FontWeight.w500)),
                      Container(
                        margin: EdgeInsets.only(left: AdaptUI.rpx(20), right: AdaptUI.px(7)),
                        child: Image(width: AdaptUI.rpx(24), height: AdaptUI.rpx(28),fit: BoxFit.contain, image: AssetImage("images/jj_auth.png")),
                      ),
                      Container(
                        child: Text(skillerModel.auth, style: TextStyle(color: Color(0xFF9933cc), fontSize: AdaptUI.rpx(22)),),
                      )
                    ],
                  ),
                    Container(
                      margin: EdgeInsets.only(top: AdaptUI.rpx(3)),
                      width: AdaptUI.rpx(400),
                      height: AdaptUI.rpx(80),
                      child: Text(
                        skillerModel.desc, 
                        textAlign: TextAlign.start, 
                        softWrap: true, 
                        maxLines: 2, 
                        overflow: TextOverflow.ellipsis,),
                    )
                  
                ],
              )
            ),
              Expanded(child: Align(
              alignment: Alignment.topRight,
              child: Container(
                margin: EdgeInsets.only(right: AdaptUI.rpx(30)),
                color: Color(0xFFCC99CC),
                width: AdaptUI.rpx(60),
                height: AdaptUI.rpx(60)
              ),
              )
              
            )
           
          ],
        ),
      ),
    )) ;
  }
}