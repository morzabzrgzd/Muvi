import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muvi/constants/app_routes.dart';
import 'package:muvi/controllers/onboarding/onboarding_ctrl.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    var onboardingCtrl = Get.put(OnboardingController());
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/images/onboardingBg.jpg',
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: double.infinity,
            child: PageView.builder(
              itemCount: 3,
              controller: onboardingCtrl.pageCtrl,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Enjoy your favourite movie everywhere',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Browse through our collections and\ndiscover hundreds of movies and series that\nyou’ll love!',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                child: SmoothPageIndicator(
                  controller: onboardingCtrl.pageCtrl, // PageController
                  count: 3,
                  effect: const ExpandingDotsEffect(
                    dotColor: Color(0xffFFF5BF),
                    activeDotColor: Color(0xffF9DA34),
                    dotHeight: 5,
                    dotWidth: 10,
                  ), // your preferred effect
                  onDotClicked: (index) {},
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.offAllNamed(AppRoutes.LOGIN_ROUTE);
                  },
                  child: Text(
                    'Get Started',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
