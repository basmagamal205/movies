import 'package:flutter/material.dart';
import 'package:movies_app/utils/ui/app_colors.dart';
import 'package:movies_app/utils/ui/app_images.dart';
import 'package:movies_app/widget/custom_button.dart';

import 'onboarding_page.dart';

class OnBoarding extends StatefulWidget {

 const  OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
 final PageController _controller=PageController();

  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
            PageView.builder(itemCount: OnboardingPage.pages.length,
              controller: _controller,
              itemBuilder: (context,index)=>OnboardingPage(data:OnboardingPage.pages[index]!,pageIndex: currentIndex,),
              onPageChanged: (index) {
                setState(() => currentIndex = index);
              },
            ),


                Positioned(
                  bottom: 10,
                  right: 10,
                  left: 10,
                  child: ElevatedButton(onPressed: (){
                    if (currentIndex < OnboardingPage.pages.length- 1) {
                      _controller.animateToPage(
                        currentIndex + 1,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    };
                  },
                    style:ElevatedButton.styleFrom(backgroundColor: AppColors.yellow,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        )
                        ,padding:
                        const EdgeInsets.symmetric(horizontal: 32, vertical: 16),),

                     child: Text("Next",style:TextStyle(
                        fontSize: 20,fontWeight:FontWeight.w600,color: AppColors.black
                    ) ,
                    ),
                  ),
                ),


    ]
      ),

    );
  }
}
