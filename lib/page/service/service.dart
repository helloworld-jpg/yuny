import 'package:flutter/material.dart';
import 'package:wuhan_flutter/app_size.dart';
import 'package:wuhan_flutter/page/my/mock_data.dart';
import 'package:wuhan_flutter/page/my/service_item.dart';
import 'package:wuhan_flutter/page/my/servicebm_item.dart';

//ServicePage

class ServicePage extends StatefulWidget {
  ServicePage({Key key}) : super(key: key);

  @override
  _ServicePageState createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  List<Widget> Listwidget;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: ListView(
          children: serverList(context),
        ),
      ),
    );
  }

  serverList(BuildContext context) {
    if (Listwidget == null) {
      Listwidget = new List<Widget>();
      Listwidget.add(createHeadInfo(context));
      Listwidget.add(creategridview(context));
      Listwidget.add(createtitleview(context));
      Listwidget.add(createHeadInfotwo(context));
      Listwidget.add(creategradlebutton(context));
      //ImageButton
    }
    return Listwidget;
  }

  //顶部健康选择
  Widget createHeadInfotwo(BuildContext context) {
    return Container(
      // color: Colors.yellow,
      padding: EdgeInsets.only(left: 10, top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            '便民服务',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  //顶部健康选择
  Widget createHeadInfo(BuildContext context) {
    return Container(
      // color: Colors.yellow,
      padding: EdgeInsets.only(left: 10, top: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            '健康服务',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget creategridview(BuildContext context) {
    return Container(
      //color: Colors.blue,
      height: 260,
      child: GridView(
        padding: EdgeInsets.only(left: 5, right: 5, top: 5),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.45,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10, top: 10),
            //color: Colors.red,height: 600,
            decoration: BoxDecoration(
                border: new Border.all(color: Color(0xff999999), width: 0.5),
                //阴影效果
                // boxShadow: [
                //   BoxShadow(
                //       color: Color(0xff999999),
                //       offset: Offset(12.0, 13.0),
                //       blurRadius: 16.0 /*,spreadRadius:2.0*/)
                // ],
                borderRadius: BorderRadius.circular(6)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '健康信息',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '一站式健康管理备份',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        //color: Colors.yellow,
                        margin: EdgeInsets.only(top: 20),
                        width: 15,
                        height: 15,
                        child: Image.asset('img/healthfrg_rec_enter.png'),
                      ),
                      Container(
                        width: 50,
                        height: 55,
                        child: Image.asset('img/healthfrg_health_info.png'),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          //第二个
          Container(
            padding: EdgeInsets.only(left: 10, top: 10),
            //color: Colors.red,height: 600,
            decoration: BoxDecoration(
                border: new Border.all(color: Color(0xff999999), width: 0.5),
                //阴影效果
                // boxShadow: [
                //   BoxShadow(
                //       color: Color(0xff999999),
                //       offset: Offset(12.0, 13.0),
                //       blurRadius: 16.0 /*,spreadRadius:2.0*/)
                // ],
                borderRadius: BorderRadius.circular(6)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '健康体验',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '各类体验通通搞定',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        //color: Colors.yellow,
                        margin: EdgeInsets.only(top: 20),
                        width: 15,
                        height: 15,
                        child: Image.asset('img/healthfrg_rec_enter.png'),
                      ),
                      Container(
                        width: 50,
                        height: 55,
                        child: Image.asset('img/healthfrg_health_test.png'),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          //第三个
          Container(
            padding: EdgeInsets.only(left: 10, top: 10),
            //color: Colors.red,height: 600,
            decoration: BoxDecoration(
                border: new Border.all(color: Color(0xff999999), width: 0.5),
                //阴影效果
                // boxShadow: [
                //   BoxShadow(
                //       color: Color(0xff999999),
                //       offset: Offset(12.0, 13.0),
                //       blurRadius: 16.0 /*,spreadRadius:2.0*/)
                // ],
                borderRadius: BorderRadius.circular(6)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '心电AI监测',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '您的心电健康记录站',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        //color: Colors.yellow,
                        margin: EdgeInsets.only(top: 20),
                        width: 15,
                        height: 15,
                        child: Image.asset('img/healthfrg_rec_enter.png'),
                      ),
                      Container(
                        width: 50,
                        height: 55,
                        child: Image.asset('img/healthfrg_heart_break.png'),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          //第4个
          Container(
            padding: EdgeInsets.only(left: 10, top: 10),
            //color: Colors.red,height: 600,
            decoration: BoxDecoration(
                border: new Border.all(color: Color(0xff999999), width: 0.5),
                //阴影效果
                // boxShadow: [
                //   BoxShadow(
                //       color: Color(0xff999999),
                //       offset: Offset(12.0, 13.0),
                //       blurRadius: 16.0 /*,spreadRadius:2.0*/)
                // ],
                borderRadius: BorderRadius.circular(6)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '智能设备',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '实时监测您的健康',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        //color: Colors.yellow,
                        margin: EdgeInsets.only(top: 20),
                        width: 15,
                        height: 15,
                        child: Image.asset('img/healthfrg_rec_enter.png'),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        child: Image.asset('img/healthfrg_ai_eqi.png'),
                      ),
                      
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget createtitleview(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5, right: 5),
      decoration: BoxDecoration(
          border: new Border.all(color: Color(0xff999999), width: 0.5),
          //阴影效果
          // boxShadow: [
          //   BoxShadow(
          //       color: Color(0xff999999),
          //       offset: Offset(12.0, 13.0),
          //       blurRadius: 16.0 /*,spreadRadius:2.0*/)
          // ],
          borderRadius: BorderRadius.circular(6)),
      child: Container(
        padding: EdgeInsets.only(
          left: 10,
          top: 10,
        ),
        //margin: EdgeInsets.only(left:5,right:5),
        //color: Colors.red,height: 600,
        constraints: BoxConstraints.expand(
          height: 100.0,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: new AssetImage('img/healthfrg_health_all_bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        // decoration: BoxDecoration(
        //     border: new Border.all(color: Color(0xff999999), width: 0.5),
        //阴影效果
        // boxShadow: [
        //   BoxShadow(
        //       color: Color(0xff999999),
        //       offset: Offset(12.0, 13.0),
        //       blurRadius: 16.0 /*,spreadRadius:2.0*/)
        // ],
        // borderRadius: BorderRadius.circular(6)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '健康百科',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    Text(
                      '关于疾病、检查报告、医疗的智慧全书',
                      style: TextStyle(
                          fontSize: 5, fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              //color: Colors.blue,

              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    //color: Colors.yellow,
                    margin: EdgeInsets.only(bottom: 10),
                    width: 15,
                    height: 15,
                    child: Image.asset('img/healthfrg_rec_enter.png'),
                  ),
                  Container(
                    width: 50,
                    height: 45,
                    child: Image.asset('img/healthfrg_health_all.png'),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget creategradlebutton(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 6, right: 6),
      height: 330,
      child: GridView.count(
        crossAxisCount: 4,
        childAspectRatio: 0.9,
        mainAxisSpacing: 1,
        crossAxisSpacing: 1,
        physics: new NeverScrollableScrollPhysics(),

        padding: EdgeInsets.symmetric(vertical: 0),
        children: servicebianm
            .map((item) => ServiceItemone(
                  data: item,
                ))
            .toList(),
        // childAspectRatio: servicebianm,
      ),
    );
  }
}
