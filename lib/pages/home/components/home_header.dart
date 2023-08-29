import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../components/hd_widget.dart';
import '../../../controllers/home/home_ctrl.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
    required this.homeCtrl,
  });

  final HomeController homeCtrl;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        SizedBox(
          width: double.infinity,
          height: 450,
          child: PageView.builder(
            itemCount: 4,
            controller: homeCtrl.pageCtrl,
            itemBuilder: (context, index) {
              return Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Container(
                    width: double.infinity,
                    height: 450,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade800,
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://thedepauw.com/wp-content/uploads/2020/02/1917poster.jpg',
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          const Color(0xff202123),
                          const Color(0xff202123).withOpacity(.8),
                          const Color(0xff202123).withOpacity(.6),
                          const Color(0xff202123).withOpacity(.0),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        Positioned(
          left: 20,
          top: 55,
          child: SvgPicture.asset(
            'assets/icons/logo.svg',
            // height: 35,
            width: 120,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '1917',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 14),
              const Row(
                children: [
                  HDWidget(),
                  SizedBox(width: 12),
                  Text('2018   13+'),
                ],
              )
            ],
          ),
        ),
        Positioned(
          right: 20,
          bottom: 40,
          child: SmoothPageIndicator(
            controller: homeCtrl.pageCtrl, // PageController
            count: 4,
            effect: const WormEffect(
              dotColor: Colors.grey,
              activeDotColor: Color(0xfFFFD130),
              dotHeight: 6,
              dotWidth: 6,
            ), // your preferred effect
            onDotClicked: (index) {},
          ),
        ),
      ],
    );
  }
}
