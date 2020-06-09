import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:wuhan_flutter/routes/Routes.dart';
import 'dart:io';
// void main() => runApp(
//   MyApp(),
  



// );
void main(){
  runApp(MyApp());
  if(Platform.isAndroid){
   SystemChrome.setSystemUIOverlayStyle
   (SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  }
    FlutterStatusbarcolor.setStatusBarWhiteForeground(false);
}





class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      title: '健康武汉',
       theme: ThemeData(
        primaryColor: Color(0xFF5DC782),
        accentColor: Color(0xFF5DC782),
        backgroundColor: Color(0xFFF2F2F2),
        
      ),
     
      routes: Routes.routes,
      initialRoute: Routes.welcome_page,
     
     
    );
  }
}