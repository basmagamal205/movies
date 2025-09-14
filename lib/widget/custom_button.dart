import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  String buttonTitle;
  Color backgroundColor;
  Color textColor;
   CustomElevatedButton({super.key,required this.buttonTitle,required this.backgroundColor,required this.textColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
    }, child: Text(buttonTitle,style:TextStyle(
      fontSize: 20,fontWeight:FontWeight.w600,color: textColor
    ) ,
    ),
        style:ElevatedButton.styleFrom(backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          )

    ),
    );
  }
}
