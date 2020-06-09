import 'package:flutter/material.dart';

import 'package:wuhan_flutter/app_size.dart';

import 'package:wuhan_flutter/constants.dart';
import 'package:wuhan_flutter/page/my/custom_view.dart';
import 'package:wuhan_flutter/page/my/mock_data.dart';
import 'package:wuhan_flutter/page/my/service_item.dart';
import 'package:wuhan_flutter/page/theme_ui.dart';

class MyPage extends StatefulWidget {
  MyPage({Key key}) : super(key: key);

  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  final screenWidth = Screen.width();
  List<Widget> contentList;
  @override
  Widget build(BuildContext ctx) {
    return Container(
        child: MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: ListView(
        children: generateList(context),
        //physics:ClampingScrollPhysics()
      ),
    ));
  }

  renderBody() {
    return Container(
      height: 200,
      child: GridView.count(
        crossAxisCount: 4,
        physics: new NeverScrollableScrollPhysics(),
        padding: EdgeInsets.symmetric(vertical: 0),
        children: serviceList.map((item) => ServiceItem(data: item)).toList(),
      ),
    );
  }

  List<Widget> generateList(BuildContext ctx) {
    if (contentList == null) {
      contentList = new List<Widget>();
      contentList.add(createHeadInfo(ctx));
    }
    return contentList;
  }

  renderHeader() {
    return Padding(
      padding: EdgeInsets.only(left: 10, top: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            '家医管理',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  _generateInfo(String label, String val) {
    return Expanded(
      child: InkWell(
        // onTap: ()=>navigateTo(label),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              val,
              style: ThemeTextStyle.personalNumStyle,
            ),
            Text(label, style: ThemeTextStyle.menuStyle),
          ],
        ),
      ),
    );
  }

  //我的个人信息界面
  createCardNav_1() {
    var title = <String>[
      "电子卡包",
      "门诊预约",
      "我的家人",
      "我的订单",
    ];
    var path = <String>[
      "img/myfragment_elect_cert.png",
      "img/myfragment_hos_appoint.png",
      "img/myfragment_family.png",
      "img/myfragment_shoptrade_record.png"
    ];

    var imageBtns = List<Widget>();
    for (int i = 0; i < path.length; i++) {
      imageBtns.add(ImageButton(path[i],
          text: title[i], textStyle: ThemeTextStyle.orderFormTitleStyle));
    }

    return Container(
      height: AppSize.height(240),
      margin: EdgeInsets.only(
          bottom: AppSize.height(10),
          left: AppSize.height(25),
          top: AppSize.height(430),
          right: AppSize.height(25)),
      decoration: BoxDecoration(
          color: Colors.white,
          border: new Border.all(color: Color(0xff999999), width: 0.5),
          borderRadius: BorderRadius.circular(6)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: imageBtns,
      ),
    );
  }

  Widget createHeadInfo(BuildContext ctx) {
    return Container(
      height: AppSize.height(2500),
      margin: EdgeInsets.only(bottom: AppSize.height(30)),
      child: Stack(
        children: <Widget>[
          Container(
            height: 180,
            width: screenWidth,
            padding: EdgeInsets.only(top: 35),
            color: Color(0xFF5AD695),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                        width: 35,
                        height: 35,
                        padding: EdgeInsets.only(right: 15),
                        child: Image.asset("img/ic_user_navbar_code1.png")),
                    Container(
                      width: 25,
                      height: 25,
                      padding: EdgeInsets.only(right: 5),
                      child: Image.asset("img/ic_user_navbar_setting1.png"),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left: 15),
                      child: CircleAvatar(
                        radius: 30.0,
                        backgroundImage: AssetImage(
                          "img/consultation_head.png",
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 9,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(
                              left: 15,
                            ),
                            child: Text(
                              '请完善信息',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: AppSize.sp(44)),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 15, top: 10),
                            child: Text(
                              '个人信息>',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: AppSize.sp(35)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: new Radius.circular(15.0),
                                  bottomLeft: new Radius.circular(15.0),
                                ),
                                border: Border.all(color: Colors.white)),
                            alignment: Alignment.center,
                            width: 50,
                            height: 30,
                            child: Text(
                              '未认证',
                              style: TextStyle(
                                  color: Color(0xFF5AD695),
                                  fontSize: AppSize.sp(35)),
                            ),
                          ),
                          Container(
                            width: 20,
                            height: 30,
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                            color: Colors.white,
                            child: Image.asset("img/arrow_right.png"),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                createCardNav_1(),
                Container(
                  
                  margin:
                      EdgeInsets.only(top: 10, bottom: 10, left: 5, right: 5),
                  decoration: BoxDecoration(
                      border:
                          new Border.all(color: Color(0xff999999), width: 0.5),
                      //阴影效果
                      // boxShadow: [
                      //   BoxShadow(
                      //       color: Color(0xff999999),
                      //       offset: Offset(12.0, 13.0),
                      //       blurRadius: 16.0 /*,spreadRadius:2.0*/)
                      // ],
                      borderRadius: BorderRadius.circular(6)),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      renderHeader(),
                      renderBody(),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      _myListTile('电子证照'),
                      _myListTile('交易记录'),
                      _myListTile('评价记录'),
                      _myListTile('我的收藏'),
                      _myListTile('帮助与反馈'),
                    ],
                  ),
                  // child: ListTile(
                  //     title: Text('Horse'),
                  //   ),
                  // child: Text('data'),
                  // color: Colors.yellow,
                  // child: ListTile(
                  //   title: Text('电子证照2'),
                  //   trailing: Icon(Icons.keyboard_arrow_right),

                  // ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _myListTile(String title) {
    return Container(
     
      // decoration: BoxDecoration(
      //     color: Colors.yellow,
      //     border: Border(bottom: BorderSide(width: 1, color: Colors.black12))),
      
      
        child:Container(
          child: Column(
            children: <Widget>[
               ListTile(
        
        // leading: icon,
        title: Container(
          child: Text(
          title,
          textAlign: TextAlign.left,
        ),
        
        ),
        trailing: Icon(Icons.keyboard_arrow_right),
        
      ),
      Container(

        padding: EdgeInsets.only(left: 10),
        child: Divider(height: 1.0, color: Color(0xff999999), ),
      )
            ],
          ),
        ),
      
     
      
    );
  }
}
