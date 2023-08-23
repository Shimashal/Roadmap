import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:map_app_task/utils/routes/route_name.dart';
import 'package:map_app_task/view_model/services/session_manager.dart';

class SplashServices{
  void isLogin(BuildContext context){
    FirebaseAuth auth= FirebaseAuth.instance;
   final user= auth.currentUser;

   if(user !=null ){
    SessionController().userId= user.uid.toString();
    Timer(const Duration(seconds: 3), ()=> Navigator.pushNamed(context, RouteName.HomePageScreen));
   }
    Timer(const Duration(seconds: 3), ()=> Navigator.pushNamed(context, RouteName.loginView));
  }
}