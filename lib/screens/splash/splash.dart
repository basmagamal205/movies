import 'package:flutter/material.dart';
import 'package:movies_app/utils/ui/app_images.dart';
import 'package:movies_app/utils/ui/app_route.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2),(){
      if(mounted){
        Navigator.push(context, AppRoute.onboarding);
    }
    });


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(AppImages.splash,fit: BoxFit.fill,),
    );
  }
}
