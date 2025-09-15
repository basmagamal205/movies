import 'package:flutter/material.dart';
import 'package:movies_app/screens/login/login.dart';
import 'package:movies_app/screens/onboarding/onboarding.dart';
import 'package:movies_app/screens/register/register.dart';
import 'package:movies_app/screens/splash/splash.dart';

class AppRoute{
 static Route get splash=>MaterialPageRoute(builder: (_)=>const Splash());
 static Route get onboarding=>MaterialPageRoute(builder: (_)=>const OnBoarding());
 static Route get login=>MaterialPageRoute(builder: (_)=> const Login());
 static Route get register=>MaterialPageRoute(builder: (_)=> const Register());
}