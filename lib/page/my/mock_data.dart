import 'package:flutter/material.dart';
import 'package:wuhan_flutter/page/home/programme.dart';
import 'package:wuhan_flutter/page/my/service_item.dart';
import 'package:wuhan_flutter/page/my/servicebm_item.dart';
import 'package:wuhan_flutter/page/my/servicebma_item.dart';
// import 'package:wuhan_flutter/page/my/custom_icons.dart';
//import 'package:wuhan_flutter/page/my/service_item.dart';

//服务 - 便民服务
const List<ServiceItemViewModelONE> servicebianm =[
  ServiceItemViewModelONE(
    title: '预防接种',
    
    icon:Image(image: AssetImage("img/healthfrg_disease_control.png"),
    
    width: 30,height: 30,),),
    ServiceItemViewModelONE(
    title: '疾病防控',
    icon:Image(image: AssetImage("img/healthfrg_disease_control.png"),
    width: 30,height: 30,),),
    ServiceItemViewModelONE(
    title: '医疗地图',
    icon:Image(image: AssetImage("img/healthfrg_medical_map.png"),
    width: 30,height: 30,),),
    ServiceItemViewModelONE(
    title: '母婴室地图',
    icon:Image(image: AssetImage("img/healthfrg_baby_map.png"),
    width: 30,height: 30,),),
    ServiceItemViewModelONE(
    title: '药店地图',
    icon:Image(image: AssetImage("img/healthfrg_drag_map.png"),
    width: 30,height: 30,),),
    ServiceItemViewModelONE(
    title: '电话导航',
    icon:Image(image: AssetImage("img/healthfrg_phone_service.png"),
    width: 30,height: 30,),),
    ServiceItemViewModelONE(
    title: '用药提醒',
    icon:Image(image: AssetImage("img/healthfrg_med_remind.png"),
    width: 30,height: 30,),),
    ServiceItemViewModelONE(
    title: 'BMI自测',
    icon:Image(image: AssetImage("img/healthfrg_bmi.png"),
    width: 30,height: 30,),),
    ServiceItemViewModelONE(
    title: '中医体质辨识',
    icon:Image(image: AssetImage("img/healthfrg_lin_physique.png"),
    width: 30,height: 30,),),
    ServiceItemViewModelONE(
    title: '老年能力评估',
    icon:Image(image: AssetImage("img/healthfrg_lin_oldman.png"),
    width: 30,height: 30,),),
    ServiceItemViewModelONE(
    title: '腰臀比自测',
    icon:Image(image: AssetImage("img/healthfrg_sexy.png"),
    width: 30,height: 30,),),
    ServiceItemViewModelONE(
    title: '处方外延',
    icon:Image(image: AssetImage("img/healthfrg_pres_extent.png"),
    width: 30,height: 30,),),
];

//首页-九宫格
const List<ProgrammeViewModel> servicebianmone =[
  
    ProgrammeViewModel(
      title: '预约挂号',
      needNew:false,
      icon:"img/home_appointment2.png",
    ),
     
      ProgrammeViewModel(
      title: '门诊支付',
      needNew: false,
      icon:"img/home_payment3.png",),
      
      
      ProgrammeViewModel(
      title: '排队叫号',
      needNew:false,
      icon:"img/home_lineup1.png"),
      
      ProgrammeViewModel(
      title: '报告查询',
      needNew:false,
      icon:"img/home_find2.png"),
      
      ProgrammeViewModel(
      title: '用血献血',
      needNew:false,
      icon:"img/home_blood_center.png"),
      
      ProgrammeViewModel(
      title: '智能导诊',
      needNew:false,
      icon:"img/ic_home_diagnose2.png"),
      
      ProgrammeViewModel(
      title: '住院业务',
      needNew:false,
      icon:"img/home_in_hos2.png"),
     
      ProgrammeViewModel(
      title: '核酸检测',
      needNew:true,
      icon:"img/home_saras_check.png"),
      
      
    
    
    
];





/// 我的 - 家医管理
const List<ServiceItemViewModel> serviceList = [
  ServiceItemViewModel(
    title: '咨询记录',
    icon:Image(image: AssetImage("img/myfragment_con_record.png"),
    width: 30,height: 30,),),
    ServiceItemViewModel(
    title: '签约记录',
    icon:Image(image: AssetImage("img/myfragment_signhistory.png"),
    width: 30,height: 30,),),
    ServiceItemViewModel(
    title: '家医预约',
    icon:Image(image: AssetImage("img/myfragment_appoint_familydoc.png"),
    width: 30,height: 30,),),
    ServiceItemViewModel(
    title: '服务记录',
    icon:Image(image: AssetImage("img/myfragment_service_history.png"),
    width: 30,height: 30,),),
    ServiceItemViewModel(
    title: '服务券',
    icon:Image(image: AssetImage("img/myfragment_service_ticket.png"),
    width: 30,height: 30,),),
    ServiceItemViewModel(
    title: '健康指标',
    icon:Image(image: AssetImage("img/myfragment_healthy_indicators.png"),
    width: 30,height: 30,),),
    ServiceItemViewModel(
    title: '健康方案',
    icon:Image(image: AssetImage("img/myfragment_health_case.png"),
    width: 30,height: 30,),),
    // icon: Image.asset(
    //                     'img/foot_b31.png',
    //                     width: 18.0,
    //                     height: 18.0,
    //                   ),
    // icon:  constImage.asset(
    //                     'img/foot_b11.png',
    //                     width: 18.0,
    //                     height: 18.0,
    //                   ),
    // icon: Icon(
    //  // IconData(),
    //   size: 25,
    //   color: Colors.lightBlue,
    // ),
    // icon:  Image.asset(
    //                     'img/foot_b11.png',
    //                     width: 18.0,
    //                     height: 18.0,
    //                   ),
  
  // ServiceItemViewModel(
  //   title: '签约记录',
  //   icon: Icon(
  //     IconData(0xe61a, fontFamily: 'IconFont'),
  //     size: 25,
  //     color: Colors.orangeAccent,
  //   ),
  // ),
  // ServiceItemViewModel(
  //   title: '家医预约',
  //   icon: Icon(
  //     CustomIcons.friedFood,
  //     size: 29,
  //     color: Colors.deepOrangeAccent,
  //   ),
  // ),
  // ServiceItemViewModel(
  //   title: '服务记录',
  //   icon: Icon(
  //     CustomIcons.sweetmeats,
  //     size: 30,
  //     color: Colors.pinkAccent,
  //   ),
  // ),
  // ServiceItemViewModel(
  //   title: '服务券',
  //   icon: Icon(
  //     CustomIcons.xiangCuisine,
  //     size: 20,
  //     color: Colors.redAccent,
  //   ),
  // ),
  // ServiceItemViewModel(
  //   title: '健康指标',
  //   icon: Icon(
  //     CustomIcons.truck,
  //     size: 25,
  //     color: Colors.orange,
  //   ),
   
  // ),
  // ServiceItemViewModel(
  //   title: '健康方案',
  //   icon: Icon(
  //     CustomIcons.motorbike,
  //     size: 28,
  //     color: Colors.blueAccent,
  //   ),
  // ),
  // ServiceItemViewModel(
  //   title: '到点自取',
  //   icon: Icon(
  //     CustomIcons.shop,
  //     size: 25,
  //     color: Colors.lightGreen,
  //   ),
  // ),
  // ServiceItemViewModel(
  //   title: '跑腿代购',
  //   icon: Icon(
  //     CustomIcons.errand,
  //     size: 25,
  //     color: Colors.red,
  //   ),
  // ),
  // ServiceItemViewModel(
  //   title: '全部分类',
  //   icon: Icon(
  //     CustomIcons.allCategories,
  //     size: 25,
  //     color: Colors.amber,
  //   ),
  // ),
];
