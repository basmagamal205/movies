import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/extensions/context_extension.dart';
import 'package:movies_app/utils/ui/app_colors.dart';
import 'package:movies_app/utils/ui/app_images.dart';
import 'package:movies_app/widget/custom_button.dart';
import 'package:movies_app/widget/custom_textfeild.dart';

class Login extends StatefulWidget{
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            Container(alignment: Alignment.topCenter,
                child: Image(image: AssetImage(AppImages.logo),
                    height: context.height * .25)),
            buildEmail(),
            SizedBox(height: 12,),
            buildPassword(),
            SizedBox(height: 12,),
            buildForgetPassword(),
            SizedBox(height: 12,),
            buildLoginButton(),
            SizedBox(height: 12,),
            buildHaveAcc(),
            SizedBox(height: 12,),
            buildDivider(),
            SizedBox(height: 12,),
            buildGoogleButton(),
            SizedBox(height: 12,),
            buildToggle(),


          ],
        ),
      ),
    );
  }

  buildEmail() => CustomTextField(prefix: Icon(Icons.email), hint: "Email");

  buildPassword() =>
      CustomTextField(
        prefix: Icon(Icons.lock), hint: "Password", isPassword: true,);

  buildForgetPassword() =>TextButton(onPressed: (){},
      child: Text("Forget Password?",style:context.textTheme.displaySmall,textAlign: TextAlign.end,
 ));



  buildLoginButton() =>CustomElevatedButton(buttonTitle: "Login", backgroundColor: AppColors.yellow,
      textColor: AppColors.black);


  buildHaveAcc() =>Row(mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text("Don’t Have Account ?",style: context.textTheme.labelSmall,),
   TextButton(onPressed: (){}, child: Text(" Create One",style: context.textTheme.displaySmall,))
  ],);

  buildDivider() =>Row(mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Expanded(child: Divider(color: AppColors.yellow,indent: 24,endIndent: 20,height: 2,)),
      Text("Or",style: context.textTheme.displaySmall,),
      Expanded(child: Divider(color: AppColors.yellow,indent: 24,endIndent: 20,height: 2,))
    ],
  );

  buildGoogleButton() =>Container(width: 361,height: 56,
    child: ElevatedButton(
      onPressed: (){
      }, child: Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [Image.asset(AppImages.google,height: 20,width: 20,),
        Text(" Login With Google",style:TextStyle(
            fontSize: 20,fontWeight:FontWeight.w600,color: AppColors.black
        ) ,
        ),
      ],
    ),
      style:ElevatedButton.styleFrom(backgroundColor: AppColors.yellow,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          )

      ),
    ),
  );

  buildToggle() =>Container(
    width: context.width*.3,
    child: AnimatedToggleSwitch<String>.dual(style:ToggleStyle(
      borderColor: Colors.transparent,

    ),
      first: "en",second: "ar",current: "ar",
    iconBuilder: (language)=>Image.asset(language=="en"?AppImages.use_ic:AppImages.eg_ic,),
      borderWidth: 0,

    ),


  );
}


