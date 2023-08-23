import 'package:flutter/material.dart';
import 'package:map_app_task/res/color.dart';
import 'package:map_app_task/res/fonts.dart';
import 'package:map_app_task/view_model/services/splash_services.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashServices services=  SplashServices();
  @override
  void initState(){
    super.initState();
    services.isLogin(context);
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             const Image(image: AssetImage('assets/images/imageone.jpg')),
               Padding(
                padding: const  EdgeInsets.symmetric(vertical: 18),
                child: Center(child: Text('Training Application' , style: Theme.of(context).textTheme.headline1?.copyWith(
                          color: AppColors.primaryColor,
                        ),),),
             )
            ],
          )
      ),
    );}
}


