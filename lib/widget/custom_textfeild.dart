import 'package:flutter/material.dart';
import 'package:movies_app/extensions/context_extension.dart';

import '../utils/ui/app_colors.dart';

class CustomTextField extends StatefulWidget {
Icon prefix ;
String hint;
bool isPassword;
CustomTextField({super.key,required this.prefix,required this.hint,this.isPassword=false});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool obsecure=true;
  @override
  Widget build(BuildContext context) {
    return TextField(style: TextStyle(color: AppColors.white),
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.gray,
        hintText: widget.hint,
        hintStyle:context.textTheme.titleSmall,

        prefixIcon:widget.prefix,
        prefixIconColor: AppColors.white,
        prefixIconConstraints: BoxConstraints(
          maxWidth: 24,
          maxHeight: 24,
        ),

        suffixIcon:(widget.isPassword)?InkWell(
          onTap:(){ obsecure=!obsecure;
          setState(() {

          });},
              child:Icon(obsecure?Icons.visibility_off_sharp:Icons.remove_red_eye)):null,
        suffixIconColor:AppColors.white,
        suffixIconConstraints: BoxConstraints(
          maxWidth: 24,
          maxHeight: 24,
        ),
        enabledBorder:OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
        ),
          focusedBorder:OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
          )

      ),
      obscureText: widget.isPassword?obsecure:false,

    );
  }
}
