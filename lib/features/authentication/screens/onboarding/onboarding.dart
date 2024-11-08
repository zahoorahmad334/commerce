import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:commerce_store/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:commerce_store/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:commerce_store/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:commerce_store/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';

import '../../../../utils/constant/image_strings.dart';
import '../../../../utils/constant/text_strings.dart';
import '../../controllers/onboarding/onboarding_controller.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // onBoarding Controller to handle Login
    final controller = Get.put(OnboardingController());

    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: TImages.onBoardingImages1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImages2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImages3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          /// Skip button
          const OnBoardingSkip(),

          /// Dot Navigation SmoothPageIndicator
          const OnBoardingDotNavigation(),

          /// Circular Button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
