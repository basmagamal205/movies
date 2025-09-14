import 'package:flutter/material.dart';
import 'package:movies_app/utils/ui/app_colors.dart';

class AppTheme{
 static final ThemeData lightTheme=ThemeData(
   textTheme: TextTheme(
     titleLarge: TextStyle(color:AppColors.white ,fontWeight:FontWeight.w500 ,fontSize: 36),
     labelSmall: TextStyle(color:AppColors.white ,fontWeight:FontWeight.w400 ,fontSize: 20),
     bodySmall:TextStyle(color:AppColors.gray ,fontWeight:FontWeight.w400 ,fontSize: 20),

   )
 );
 static ThemeData darkTheme=ThemeData();

}