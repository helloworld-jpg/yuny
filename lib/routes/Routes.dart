import 'package:flutter/material.dart';
import 'package:wuhan_flutter/page/welcome/welcome_page.dart';

class Routes {

  static const String welcome_page = '/';



  static Map <String, WidgetBuilder> routes ={
    welcome_page :(context)=>WelcomePage(),
  
};

}

