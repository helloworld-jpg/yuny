import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wuhan_flutter/app_size.dart';


class HomeTopBar extends StatelessWidget {
  const HomeTopBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     final controller = TextEditingController();
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
       children: <Widget>[
        SizedBox(
          width: 48,
          child: Column(mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Icon(
                //   //IconFonts.scan_code,
                //   color: Colors.white,
                //   size: AppSize.width(48),
                // ),
                Text("扫一扫", style: TextStyle(fontSize: AppSize.sp(28), color: Colors.white))
              ]),
        ),
        Expanded(
          child:Container(
          
        //color: Colors.white,
        // child: Padding(
        //   padding: EdgeInsets.only(top: MediaQueryData.fromWindow(window).padding.top,),
          
        // ),
        child: Container(
            height: 52.0,
            
            child: Padding(padding: const EdgeInsets.all(6.0),
            child: Card(
             shape: new StadiumBorder(side: new BorderSide(
                style: BorderStyle.solid,
                color:Colors.pink,
              )),

            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(width: 5.0,),
                      Icon(Icons.search, color: Colors.pink,size:18.0),
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          child: TextField(
                            controller: controller,
                            
                            decoration: new InputDecoration(
                              
                              contentPadding: EdgeInsets.only(bottom: 14.0),
                              
                              hintText: '请输入搜索内容', border: InputBorder.none),
                              
                              // onChanged: onSearchTextChanged,
                            ),
                        ),
                      ),
                      new IconButton(
                        icon: new Icon(Icons.cancel),
                        color: Colors.pink,
                        iconSize: 18.0,
                        onPressed: () {
                          controller.clear();
                          // onSearchTextChanged('');
                        },
                      ),
                ],
                
              ),
            ),    
            ),
            ),
            
          ),
      ),
          ),
          
          SizedBox(
          width: 48,
          child: Column(mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Icon(
                //   //IconFonts.location,
                //   color: Colors.white,
                //   size: AppSize.width(48),
                // ),
                Text("湖北武汉", style: TextStyle(fontSize: AppSize.sp(28), color: Colors.white))
              ]),
        ),
          
        
              
      ],
    );
  }
}
class CommonTopBar extends StatelessWidget {
  final String title;

  CommonTopBar({
    @required this.title
});

  @override
  Widget build(BuildContext context) {
    return Center(child: 
      Text(title,style: TextStyle(color: Colors.white,fontSize: AppSize.sp(52))));
  }
}

class CommonBackTopBar extends StatelessWidget {
  final String title;
  final Function onBack;

  CommonBackTopBar({
    @required this.title,
    this.onBack
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Center(child: Text(title,
            style: TextStyle(color: Colors.white,fontSize: AppSize.sp(52)))),
        InkWell(
          onTap: onBack,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: AppSize.width(20)),
             // child: Icon(IconFonts.arrow_left,color: Colors.white,size: AppSize.height(60)),
            )
          ],),
        )
      ],
    );
  }
}

class CustomBackBar extends StatelessWidget {
  final Function onBack;
  final Function onAction;

  CustomBackBar({
    this.onBack,
    this.onAction
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Center(
            child: InkWell(
              onTap: onAction,
              child: Container(
                width: AppSize.width(750),
                height: AppSize.height(72),
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
                child: Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          CupertinoIcons.search,
                          color: Color(0xff999999),
                          size: AppSize.width(40),
                        ),
                        Text("请输入品牌名称",
                            style: TextStyle(fontSize:AppSize.sp(35), color: Color(0xff999999)))
                      ],
                    )),
              ),
            )),
        InkWell(
          onTap: onBack,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: AppSize.width(20)),
                //child: Icon(IconFonts.arrow_left,color: Colors.white,size: AppSize.height(60)),
              )
            ],),
        )
      ],
    );
  }
}