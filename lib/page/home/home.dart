import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:wuhan_flutter/app_size.dart';
import 'package:wuhan_flutter/page/home/programme.dart';
import 'package:wuhan_flutter/page/my/mock_data.dart';
import 'package:wuhan_flutter/page/my/servicebm_item.dart';
import 'package:wuhan_flutter/page/my/servicebma_item.dart';

//HomeItemPage
const APPBAR_SCROLL_OFFSET = 100;

class HomeItemPage extends StatefulWidget {
  HomeItemPage({Key key}) : super(key: key);

  @override
  _HomeItemPageState createState() => _HomeItemPageState();
}

class _HomeItemPageState extends State<HomeItemPage> {
  double appBarAlpha = 0;

  __onScroll(offset) {
    double alpha = offset / APPBAR_SCROLL_OFFSET;
    if (alpha < 0) {
      alpha = 0;
    } else if (alpha > 1) {
      alpha = 1;
    }
    setState(() {
      appBarAlpha = alpha;
    });
  }

  static const swiperDataList = [
    'img/banner13.png',
    'img/banner23.png',
    'img/banner33.png',
  ];
  // final screenWidth = Screen.width();
  List<Widget> contentList;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;
    return Scaffold(
        body: Stack(
      children: <Widget>[
        MediaQuery.removePadding(
            context: context,
            removeTop: true,
            //监听列表的滚动
            child: NotificationListener(
              //监听滚动后要调用的方法
              // ignore: missing_return
              onNotification: (scrollNotification) {
                //只有当是更新状态下和是第0个child的时候才会调用
                if (scrollNotification is ScrollUpdateNotification &&
                    scrollNotification.depth == 0) {
                  __onScroll(scrollNotification.metrics.pixels);
                }
              },
              child: ListView(
                children: <Widget>[
                  Container(
                    height: 190,
                    child: Swiper(
                      //item的数量
                      itemCount: swiperDataList.length,
                      //自动播放
                      autoplay: true,
                      onTap: (index) => print('点击了第$index个'),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          child: Image.asset(
                            '${swiperDataList[index]}',
                            fit: BoxFit.fill,
                          ),
                        );
                      },
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print('点击了么么哒');
                      // Navigator.of(context).pop();
                    },
                    child: Container(
                      //color: Colors.yellow,
                      height: 180,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            //color: Colors.green,
                            child: Expanded(
                                child: Container(
                              // color: Colors.red,
                              margin: EdgeInsets.only(left: 10, right: 10),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: new AssetImage(
                                      'img/homefrag_mydoctor.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Container(
                                padding: EdgeInsets.only(left: 10, top: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      '我的家医',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      '签约享受健康医疗服务',
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black26,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )),
                          ),
                          Container(
                            // color: Colors.red,
                            child: Expanded(
                              child: Container(
                                //color: Colors.green,
                                padding: EdgeInsets.only(right: 10),
                                child: Column(
                                  children: <Widget>[
                                    SizedBox(
                                        height: 90,
                                        width: width / 2,
                                        child: Container(
                                          padding: EdgeInsets.only(
                                              top: 15, left: 15),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                '我的钱包',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(
                                                height: 8,
                                              ),
                                              Text(
                                                '快速在线支付',
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.normal,
                                                  color: Colors.black26,
                                                ),
                                              )
                                            ],
                                          ),
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: new AssetImage(
                                                  'img/homefrag_wollet.png'),
                                              //fit: BoxFit.cover,
                                            ),
                                          ),
                                        )),
                                    SizedBox(
                                        height: 90,
                                        width: width / 2,
                                        child: Container(
                                          padding: EdgeInsets.only(
                                              top: 15, left: 15),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                '健康宣教',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(
                                                height: 8,
                                              ),
                                              Text(
                                                '科普知识和活动资讯',
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.normal,
                                                  color: Colors.black26,
                                                ),
                                              )
                                            ],
                                          ),
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: new AssetImage(
                                                  'img/homefrag_health_page.png'),
                                              //  fit: BoxFit.cover,
                                            ),
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 6, right: 6, top: 15),
                    //height: 330,

                    child: GridView.builder(
                      shrinkWrap: true,
                      itemCount: servicebianmone.length,
                      physics: NeverScrollableScrollPhysics(),
                      //padding: EdgeInsets.symmetric(vertical: 5),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        // mainAxisSpacing: 10,
                        // crossAxisSpacing: 10,
                        childAspectRatio: 1.3,
                      ),
                      itemBuilder: (context, index) {
                        return Programme(data: servicebianmone[index]);
                      },
                    ),

                    // GridView.count(
                    //   crossAxisCount: 4,
                    //   childAspectRatio: 0.9,
                    //   mainAxisSpacing: 1,
                    //   crossAxisSpacing: 1,
                    //   physics: new NeverScrollableScrollPhysics(),

                    //   padding: EdgeInsets.symmetric(vertical: 0),
                    //   children: servicebianmone
                    //       .map((item) => ServiceItemtwo(
                    //             data: item,
                    //           ))
                    //       .toList(),
                    //   // childAspectRatio: servicebianm,
                    // ),
                  ),
                  creategridview(),
                  createnewview(),
                 // createlistview(),
                                                    ],
                                                  ),
                                                )),
                                            //通过Opacity的透明度来控制appBar的显示与隐藏
                                            // opacity:透明度，0.0 到 1.0，0.0表示完全透明，1.0表示完全不透明
                                            // Opacity(
                                            //   opacity: appBarAlpha,
                                    
                                            Container(
                                              height: 80,
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: <Widget>[
                                                  SizedBox(
                                                    width: 20,
                                                    height: 30,
                                                    child: Image.asset('img/ic_navbar_scan.png'),
                                                  ),
                                                  Expanded(
                                                    child: GestureDetector(
                                                      onTap: () {
                                                        print('点击了绿色');
                                                        // Navigator.of(context).pop();
                                                      },
                                                      child: Container(
                                                        margin: EdgeInsets.only(left: 10, right: 10),
                                                        height: 30,
                                                        child: Row(
                                                          children: <Widget>[
                                                            Padding(
                                                              padding: new EdgeInsets.only(
                                                                right: 10.0,
                                                              ),
                                                            ),
                                                            new Icon(Icons.search,
                                                                size: 18.0, color: Colors.black38),
                                                            Text(
                                                              '搜索医院、科室、医生、疾病',
                                                              style: TextStyle(fontSize: 13, color: Colors.black26),
                                                            )
                                                          ],
                                                        ),
                                                        decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          border: new Border.all(color: Colors.white, width: 0.5),
                                                          borderRadius: BorderRadius.only(
                                                            topLeft: new Radius.circular(15.0),
                                                            bottomLeft: new Radius.circular(15.0),
                                                            topRight: new Radius.circular(15.0),
                                                            bottomRight: new Radius.circular(15.0),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 20,
                                                    height: 30,
                                                    child: Image.asset('img/ic_navbar_message.png'),
                                                  ),
                                                ],
                                              ),
                                              padding: EdgeInsets.only(left: 8, right: 8, top: 35),
                                            ),
                                    
                                            Opacity(
                                              opacity: appBarAlpha,
                                              child: GestureDetector(
                                                onTap: () {
                                                  print('object');
                                                },
                                                child: Container(
                                                  height: 80,
                                                  color: Color(0xFFF5F5F5),
                                                  padding: EdgeInsets.only(left: 8, right: 8, top: 35),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: <Widget>[
                                                      SizedBox(
                                                        width: 20,
                                                        height: 30,
                                                        child: Image.asset('img/ic_navbar_scan_black.png'),
                                                      ),
                                                      Expanded(
                                                          child: GestureDetector(
                                                        onTap: () {
                                                          print('点击了绿色2');
                                                        },
                                                        child: Container(
                                                          height: 30,
                                                          margin: EdgeInsets.only(left: 10, right: 10),
                                                          child: Row(
                                                            children: <Widget>[
                                                              Padding(
                                                                padding: new EdgeInsets.only(
                                                                  right: 10.0,
                                                                ),
                                                              ),
                                                              new Icon(Icons.search,
                                                                  size: 18.0, color: Colors.black38),
                                                              Text(
                                                                '搜索医院、科室、医生、疾病',
                                                                style:
                                                                    TextStyle(fontSize: 13, color: Colors.black26),
                                                              )
                                                            ],
                                                          ),
                                                          decoration: BoxDecoration(
                                                            color: Color(0xFFDEDEDE),
                                                            border: new Border.all(
                                                                color: Color(0xFFDEDEDE), width: 0.5),
                                                            borderRadius: BorderRadius.only(
                                                              topLeft: new Radius.circular(15.0),
                                                              bottomLeft: new Radius.circular(15.0),
                                                              topRight: new Radius.circular(15.0),
                                                              bottomRight: new Radius.circular(15.0),
                                                            ),
                                                          ),
                                                        ),
                                                      )),
                                                      SizedBox(
                                                        width: 20,
                                                        height: 30,
                                                        child: Image.asset('img/ic_navbar_maeeage_black.png'),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ));
                                      }
                                    
                                      Widget _swiperBuilder(BuildContext context, int index) {
                                        return Container(
                                          child: Image.asset(
                                            '${swiperDataList[index]}',
                                            fit: BoxFit.fill,
                                          ),
                                        );
                                      }
                                    
                                      creategridview() {
                                        return Container(
                                          //color: Colors.blue,
                                          height: 100,
                                          child: GridView(
                                            physics: new NeverScrollableScrollPhysics(),
                                            padding: EdgeInsets.only(left: 5, right: 5, top: 5),
                                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 2,
                                              childAspectRatio: 1.8,
                                              mainAxisSpacing: 10,
                                              crossAxisSpacing: 10,
                                            ),
                                            children: <Widget>[
                                              Container(
                                                padding: EdgeInsets.only(left: 10, top: 10),
                                                //color: Colors.red,height: 600,
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Text(
                                                      '上门护理',
                                                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                                    ),
                                                    SizedBox(
                                                      height: 2,
                                                    ),
                                                    Text(
                                                      '互联网+护理服务',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight: FontWeight.normal,
                                                          color: Colors.black26),
                                                    ),
                                                  ],
                                                ),
                                                decoration: BoxDecoration(
                                                    border: new Border.all(color: Color(0xff999999), width: 0.5),
                                                    image: new DecorationImage(
                                                      image: new AssetImage("img/homefrag_house_service.png"),
                                                      //这里是从assets静态文件中获取的，也可以new NetworkImage(）从网络上获取
                                                    ),
                                                    borderRadius: BorderRadius.circular(6)),
                                              ),
                                              Container(
                                                padding: EdgeInsets.only(left: 10, top: 10),
                                                //color: Colors.red,height: 600,
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Text(
                                                      '母子手册',
                                                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                                    ),
                                                    SizedBox(
                                                      height: 2,
                                                    ),
                                                    Text(
                                                      '专注妇女儿童的健康',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight: FontWeight.normal,
                                                          color: Colors.black26),
                                                    ),
                                                  ],
                                                ),
                                                //     decoration: BoxDecoration(
                                                //         border: new Border.all(color: Color(0xff999999), width: 0.5),
                                    
                                                //         image: new DecorationImage(
                                                //        image: new AssetImage("img/homefrag_house_service.png"),
                                                //         //这里是从assets静态文件中获取的，也可以new NetworkImage(）从网络上获取
                                    
                                                //     ),
                                    
                                                // ),
                                                decoration: BoxDecoration(
                                                    border: new Border.all(color: Color(0xff999999), width: 0.5),
                                                    image: DecorationImage(
                                                      image: AssetImage("img/homefrag_baby_service.png"),
                                                    ),
                                                    borderRadius: BorderRadius.circular(6)),
                                              ),
                                            ],
                                          ),
                                        );
                                      }
                                    
                                      createnewview() {
                                        List list= ["最新","推荐","抗疫科普","疫情通报","医院",];
                                        return Stack(
                                          children: <Widget>[
                                           
                                            // Container(
                                            //   height: 50,
                                            //   child: Text('data'),
                                            // ),
                                            Container(
                        height: 50,
                        //width: MediaQuery.of(context).size.width,//总的宽度是750 -180
                        decoration: BoxDecoration(
                          //color: Colors.yellow,//白色背景
                          // border: Border(
                          //   bottom: BorderSide(width: 1.0,color: Colors.black12)//边界线
                          // )
                        ),
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: list.length,
                          itemBuilder: (context,index){
                            return _rightInkWell(list[index]);
                                    },
                                  ),
                                  
                                ),
                                 Container(
                                 
                                              width: MediaQuery.of(context).size.width,
                                              height: 50,
                                              alignment: Alignment.centerRight,
                                                
                                              child: Image.asset("img/icon_arrow_right.png", width: 15, height: 15, ),
                                              padding: EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
                                           
                                            ),
                                            
                                          ],
                                        );
                                                                            }
                            
                              _rightInkWell(String item) {
                                return InkWell(
                        onTap: (){
                          print("dsfsds");
                        },//事件留空
                        child: Stack(
                          
                          children: <Widget>[
                           
                            Container(//什么都加一个container，这样好布局
                         //color: Colors.red, 
                        
                         padding: EdgeInsets.fromLTRB(10.0, 15.0, 12.0, 10.0),//上下是10 左右是5.0
                            child:Text(
                            item,
                            style:TextStyle(fontSize: 15),
                            
                          ),
                          
                        ),
                         
                          ],
                        ),
                        
                      );
                              }
                  
                    
                            
                             
  // void _goOtherApp(int index) async {
  //   const url = 'flutter://li.zhuoyuan'; //这个url就是由scheme和host组成的 ：scheme://host
  //   // if (await canLaunch(url)) {
  //   //   await launch(url);
  //   // } else {
  //   //   throw 'Could not launch $url';
  //   // }
  // }
}
