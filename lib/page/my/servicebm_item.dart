import 'package:flutter/material.dart';

class ServiceItemone extends StatelessWidget {
   ServiceItemViewModelONE data;

  ServiceItemone({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.yellow,
      
      //alignment: Alignment.topCenter,
      //margin: EdgeInsets.only(10),
     //padding: EdgeInsets.only(left: 5,right:5),
      child: Container(
        //alignment: Alignment.center,
        //#FAFAFA
        decoration: BoxDecoration(
                                color: Color(0xFFF5F5F5),
                                borderRadius: BorderRadius.only(
                                 
                                ),
                                border: Border.all(color: Color(0xFFFAFAFA),)),
        child: Column(
         
        children: <Widget>[
           Container(
            
             child:  Expanded(child: this.data.icon),
           ),
          
          Container(
            //color: Colors.red,
           // margin: EdgeInsets.only(bottom:10,),
            
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
      ),
    );
  }
}





class ServiceItemViewModelONE {
  /// 图标
  final Widget icon;

  /// 标题
  final String title;
  
  

  const ServiceItemViewModelONE({
    this.icon,
    this.title,
  });
}
