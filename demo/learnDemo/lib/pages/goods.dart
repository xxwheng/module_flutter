import 'package:adaptui/adaptui.dart';
import 'package:flutter/material.dart';
import 'shopcar.dart';

class GoodListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("列表"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => ShopCarPage()));
            },
          )
        ],
      ),
      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {},
          child: Container(
            height: AdaptUI.screenHeight,
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.red, width: AdaptUI.px())),
            ),
            margin: EdgeInsets.only(left: 20),
            padding: EdgeInsets.only(right: 20),
            child:  Row(
            
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            textDirection: TextDirection.ltr,
            children: <Widget>[
              Expanded(child: 
              Container(
                child: Text("data: $index") ,
              ) 
              )
              ,
              Container(
                child: Icon(Icons.account_balance),
              )
              
              // Align(
              //   alignment: Alignment.centerRight,
              //   child: ,
              // )
             ],
          ),
          )
            
          
        ),
        // separatorBuilder: (context, index) => Divider(color: Colors.blue),
      ),
    );
  }
}