import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wuhan_flutter/app_size.dart';
import 'package:wuhan_flutter/constants.dart';
import 'package:wuhan_flutter/page/fitness/fitness.dart';
import 'package:wuhan_flutter/page/home/home.dart';
import 'package:wuhan_flutter/page/mall/mall.dart';
import 'package:wuhan_flutter/page/my/my.dart';
import 'package:wuhan_flutter/page/service/service.dart';

//WelcomePage

class WelcomePage extends StatefulWidget {
  WelcomePage({Key key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  //int _currentIndex = 0;
  PageController pageController;
  int _page = 0;
  int _currentIndex = 0;
  String bigImg = 'images/qr_code_white';

  final pages = [
    HomeItemPage(),
    ServicePage(),
    FitnessPage(),
    MallPage(),
    MyPage()
  ];

  @override
  Widget build(BuildContext context) {
    AppSize.init(context);
     Screen.init(context);
    return MaterialApp(
      theme: ThemeData(primaryColor: Color(0xFF5DC782)),
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            Scaffold(
              body: PageView(
                physics: NeverScrollableScrollPhysics(),
                children: <Widget>[
                  HomeItemPage(),
                  ServicePage(),
                  FitnessPage(),
                  MallPage(),
                  MyPage()
                ],
                controller: pageController,
                onPageChanged: onPageChanged,
              ),
              bottomNavigationBar: BottomNavigationBar(
                currentIndex: _currentIndex,
                iconSize: 18.0,
                items: [
                  BottomNavigationBarItem(
                      backgroundColor: Colors.white,
                      icon: new Image.asset(
                        'img/foot_b11.png',
                        width: 18.0,
                        height: 18.0,
                      ),
                      activeIcon: new Image.asset(
                        'img/foot_b11_b.png',
                        width: 18.0,
                        height: 18.0,
                      ),
                      title: new Text("首页")),
                  BottomNavigationBarItem(
                      backgroundColor: Colors.white,
                      icon: new Image.asset(
                        'img/foot_b3.png',
                        width: 18.0,
                        height: 18.0,
                      ),
                      activeIcon: new Image.asset(
                        'img/foot_b3_b.png',
                        width: 18.0,
                        height: 18.0,
                      ),
                      title: new Text("服务")),
                  BottomNavigationBarItem(
                      backgroundColor: Colors.white,
                      icon: new Image.asset(
                        'img/foot_b3.png',
                        width: 18.0,
                        height: 18.0,
                      ),
                      activeIcon: new Image.asset(
                        'img/foot_b3_b.png',
                        width: 1.0,
                        height: 1.0,
                      ),
                      title: new Text("健康卡")),
                  BottomNavigationBarItem(
                      backgroundColor: Colors.white,
                      icon: new Image.asset(
                        'img/foot_b31.png',
                        width: 18.0,
                        height: 18.0,
                      ),
                      activeIcon: new Image.asset(
                        'img/foot_b31_b.png',
                        width: 18.0,
                        height: 18.0,
                      ),
                      title: new Text("商城")),
                  BottomNavigationBarItem(
                      backgroundColor: Colors.white,
                      icon: new Image.asset(
                        'img/foot_b4.png',
                        width: 18.0,
                        height: 18.0,
                      ),
                      activeIcon: new Image.asset(
                        'img/foot_b4_b.png',
                        width: 18.0,
                        height: 18.0,
                      ),
                      title: new Text("我的")),
                ],
                onTap: (index) {
                  _changePage(index);
                },
                type: BottomNavigationBarType.fixed,
                
              ),
              
            ),
            // Align(
            //   child: Padding(
            //     padding: const EdgeInsets.only(bottom: 42.0),
            //     child: Container(
            //       width: 38.0,
            //       height: 38.0,
                  
            //       child: FloatingActionButton(
            //      // backgroundColor: Colors.red[100],
            //       child: new Image.asset(bigImg),
                  
            //      // onPressed: onBigImgTap,
            //     ),
            //     ),
            //   ),
            //   alignment: Alignment.bottomCenter,
            // ),
          ],
        ),
      ),
    );
  }
   @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: this._currentIndex);
  }

  void onPageChanged(int page) {
    setState(() {
      this._page = page;
      print(page);
    });
  }
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }


  void _changePage(int index) {
    setState(() {
       if (index != 2) {
      setState(() {
        this.bigImg = 'images/foot_b3.png';
      });
    }else{
      setState(() {
        this.bigImg = 'images/foot_b3_b.png';
      });
    }
      _currentIndex = index;
      pageController.jumpToPage(index);
     // print(index);
    });
  }
}
