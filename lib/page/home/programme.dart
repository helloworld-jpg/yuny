import 'package:flutter/material.dart';

class Programme extends StatelessWidget {
  final ProgrammeViewModel data;
  const Programme({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          //color: Colors.yellow,
          child: Stack(
            children: <Widget>[
              Container(
               // color: Colors.red,
                width: 35,
                height: 35,
    //             icon:Image(image: AssetImage("img/healthfrg_disease_control.png"),
    
    // width: 30,height: 30,),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: new AssetImage(this.data.icon),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
             !this.data.needNew ? null : Positioned(
                right: 0,
                top: 3,
                left: 12,
                child: Container(
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                  image: DecorationImage(
                    image: new AssetImage('img/home_saras_check_new.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                ),
              ),
             
            ].where((item) => item != null).toList(),
          ),

          // ),
        ),
        Text(this.data.title),
      ],
    );
  }
}

class ProgrammeViewModel {
  //图片
  final String icon;
  //文字
  final String title;
  //是否显示new图标
  final bool needNew;
 // final bool needVip;

  const ProgrammeViewModel({
    this.title,
    this.needNew,
    this.icon,
  });
}
