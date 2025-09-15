import 'package:flutter/material.dart';
import 'package:movies_app/utils/ui/app_colors.dart';

class AppTheme{
 static final ThemeData lightTheme=ThemeData(

 );
 static ThemeData darkTheme=ThemeData(
   scaffoldBackgroundColor: AppColors.black,
     textTheme: TextTheme(
       titleLarge: TextStyle(color:AppColors.white ,fontWeight:FontWeight.w500 ,fontSize: 36),
       labelMedium: TextStyle(color:AppColors.white ,fontWeight:FontWeight.w400 ,fontSize: 20),
       bodyMedium:TextStyle(color:AppColors.gray ,fontWeight:FontWeight.w400 ,fontSize: 20),
       titleSmall:TextStyle(color:AppColors.white ,fontWeight:FontWeight.w400 ,fontSize: 16),
       displaySmall:TextStyle(color:AppColors.yellow ,fontWeight:FontWeight.w400 ,fontSize: 14),
       labelSmall: TextStyle(color:AppColors.white ,fontWeight:FontWeight.w400 ,fontSize: 14),

     ),
     dividerTheme: DividerThemeData(
         color: AppColors.yellow
     ),
     appBarTheme: AppBarTheme(
       color: AppColors.black,
       centerTitle: true,
       titleTextStyle: TextStyle(color:AppColors.yellow ,fontWeight:FontWeight.w400 ,fontSize: 14),
     )
 );

}