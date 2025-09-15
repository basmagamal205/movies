import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/extensions/context_extension.dart';
import 'package:movies_app/utils/ui/app_colors.dart';
import 'package:movies_app/utils/ui/app_images.dart';
import 'package:movies_app/widget/custom_button.dart';
import 'package:movies_app/widget/custom_textfeild.dart';

class Register extends StatefulWidget
{

  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  int selectedIndex=0;
  List<String>avatars=[AppImages.avatar1,AppImages.avatar2,AppImages.avatar3];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [SizedBox(height: 16,)
            ,SizedBox(
            height: 100,
            child:
                ListView.separated(itemBuilder: (context,index){
                  final isSelected=selectedIndex==index;
                  return GestureDetector(
                    onTap: (){
                      selectedIndex=index;
                      setState(() {
                      });
                    },
                    child: CircleAvatar(
                      radius:isSelected?70:50 ,
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 50,
                        child:Image(image: AssetImage(avatars[index],),fit:BoxFit.cover,
                         ),
                      ),
                    ),
                  );

                },
                    scrollDirection: Axis.horizontal,
                    separatorBuilder:(_,__)=> SizedBox(width: 16,),
                    itemCount:avatars.length ),
            ),
            SizedBox(height: 24,),
            buildName(),
            SizedBox(height: 12,),
            buildEmail(),
            SizedBox(height: 12,),
            buildPassword(),
            SizedBox(height: 12,),
            buildREpassword(),
            SizedBox(height: 12,),
            buildPhone(),
            SizedBox(height: 12,),
            buildCreateACC(),
            SizedBox(height: 12,),
            buildHaveAcc(context),
            SizedBox(height: 12,),
            buildToggle(context)
          ],
            ),
      ),
    );
  }
}



buildName() =>CustomTextField(prefix: Icon(Icons.contact_mail_outlined), hint: "Name");


buildEmail() =>CustomTextField(prefix: Icon(Icons.email), hint: "Email");

buildPassword()=>CustomTextField(prefix: Icon(Icons.lock), hint: "Password",isPassword: true,);

buildREpassword() =>CustomTextField(prefix: Icon(Icons.lock), hint: "Confirm Password",isPassword: true,);
buildPhone() =>CustomTextField(prefix: Icon(Icons.phone), hint: "Phone");
buildCreateACC()=>CustomElevatedButton
  (buttonTitle: "Create Account", backgroundColor: AppColors.yellow, textColor: AppColors.black);
buildHaveAcc(BuildContext context) =>Row(mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Text("Already Have Account ? ",style: context.textTheme.labelSmall,),
    TextButton(onPressed: (){}, child: Text("Login",style: context.textTheme.displaySmall,))
  ],);
buildToggle(BuildContext context) =>Container(
width: context.width*.25,
child: AnimatedToggleSwitch<String>.dual(style:ToggleStyle(
borderColor: Colors.transparent,

),
first: "en",second: "ar",current: "ar",
iconBuilder: (language)=>Image.asset(language=="en"?AppImages.use_ic:AppImages.eg_ic,),
borderWidth: 0,
)
);


