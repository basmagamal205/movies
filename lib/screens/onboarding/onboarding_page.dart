import 'package:flutter/material.dart';
import 'package:movies_app/extensions/context_extension.dart';
import 'package:movies_app/screens/onboarding/introdata.dart';
import 'package:movies_app/utils/ui/app_colors.dart';
import 'package:movies_app/utils/ui/app_images.dart';
import 'package:movies_app/widget/custom_button.dart';

class OnboardingPage extends StatelessWidget {
  final IntroData data;
  final int pageIndex;
  const OnboardingPage({super.key,required this.data,required this.pageIndex});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(decoration: BoxDecoration(image:DecorationImage
        (image: AssetImage(data.image,),fit: BoxFit.fill,)),
      ),
             Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(data.title,style:context.textTheme.titleLarge,textAlign:TextAlign.center,),
                    SizedBox(height: 12,),
                    Text(data.desc,style: context.textTheme.labelSmall),
                    SizedBox(height: 50,),


                  ],
                )
            ),

    ],
    );
  }
static List<IntroData?> pages=[
  IntroData(AppImages.poster, "Find Your Next Favorite Movie Here", "Get access to a huge "
      "library of movies to suit all tastes. You will surely like it.", "Explore Now"),
  IntroData(AppImages.movie1, "Discover Movies", "Explore a vast collection of movies"
      " in all qualities and genres. Find your next favorite film with ease.", "Next"),
  IntroData(AppImages.movie2, "Explore All Genres", "Discover movies from every genre, in all available qualities. "
      "Find something new and exciting to watch every day.", "Next"),
  IntroData(AppImages.movie3, "Create Watchlists", "Save movies to your watchlist to keep track of what you want to watch next."
      " Enjoy films in various qualities and genres.", "Next"),
  IntroData(AppImages.movie4, "Rate, Review, and Learn", "Share your thoughts on the movies you've watched."
      " Dive deep into film details and help others discover great movies with your reviews."
      , "Next"),
  IntroData(AppImages.movie5, "Start Watching Now", "", "Finish"),

];
}
