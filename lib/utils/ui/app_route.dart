import 'package:flutter/material.dart';
import 'package:movies_app/screens/onboarding/onboarding.dart';
import 'package:movies_app/screens/splash/splash.dart';

class AppRoute{
 static Route get splash=>MaterialPageRoute(builder: (_)=>const Splash());
 static Route get onboarding=>MaterialPageRoute(builder: (_)=> const OnBoarding());
}