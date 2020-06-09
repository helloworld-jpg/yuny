import 'package:flutter/material.dart';

class ServiceItem extends StatelessWidget {
   ServiceItemViewModel data;

  ServiceItem({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     // color: Colors.red,
      alignment: Alignment.topCenter,
      //margin: EdgeInsets.only(10),
     padding: EdgeInsets.all(10),
      child: Column(
         
        children: <Widget>[
          
          Expanded(child: this.data.icon),
          Container(
            
            margin: EdgeInsets.only(bottom:10,),
            
            child: Text(
            this.data.title,
            style: TextStyle(
              fontSize: 13,
              color: Color(0xFF333333),
            ),
          ),
          )
        ],
      ),
    );
  }
}





class ServiceItemViewModel {
  /// 图标
  final Widget icon;

  /// 标题
  final String title;

  const ServiceItemViewModel({
    this.icon,
    this.title,
  });
}
