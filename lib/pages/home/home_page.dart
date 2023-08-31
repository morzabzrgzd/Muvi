import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muvi/components/hd_widget.dart';
import 'package:muvi/components/imdb_rate.dart';
import 'package:muvi/constants/app_routes.dart';
import 'package:muvi/controllers/home/home_ctrl.dart';

import 'components/home_header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var homeCtrl = Get.put(HomeController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeHeader(homeCtrl: homeCtrl),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'New on Cinemas',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  // TextButton(
                  //   onPressed: () {},
                  //   child: Text(
                  //     'View More',
                  //     style: TextStyle(color: Colors.white.withOpacity(.5)),
                  //   ),
                  // ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              // height: 10,
              width: double.infinity,
              // color: Colors.blue,
              child: SingleChildScrollView(
                padding: const EdgeInsets.only(left: 15, right: 10),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    5,
                    (index) => InkWell(
                      // autofocus: true,
                      onTap: () {},
                      borderRadius: BorderRadius.circular(4),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        width: 170,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 5),
                            Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                Container(
                                  width: 170,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: Colors.grey.shade800,
                                    image: const DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                        'https://m.media-amazon.com/images/M/MV5BMTM0MWE4ZmEtM2UzMy00Yzc0LWExYmMtMmQ4NDRhMDg2YTFlXkEyXkFqcGdeQXVyNzAyMTQyNDA@._V1_.jpg',
                                      ),
                                    ),
                                  ),
                                ),
                                const Positioned(
                                  left: 4,
                                  bottom: 4,
                                  child: HDWidget(),
                                ),
                              ],
                            ),
                            const SizedBox(height: 4),
                            Text(
                              'Let Me In',
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                            const SizedBox(height: 4),
                            Text(
                              'Movie Description Write Here',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.white.withOpacity(.6),
                                fontSize: 14,
                              ),
                            ),
                            const SizedBox(height: 20)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Movies',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  TextButton(
                    onPressed: () {
                      Get.toNamed(AppRoutes.POPULARMOVIES_ROUTE);
                    },
                    child: Text(
                      'View More',
                      style: TextStyle(color: Colors.white.withOpacity(.5)),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            SizedBox(
              // height: 10,
              width: double.infinity,
              // color: Colors.blue,
              child: SingleChildScrollView(
                padding: const EdgeInsets.only(left: 15, right: 10),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    5,
                    (index) => InkWell(
                      // autofocus: true,
                      onTap: () {},
                      borderRadius: BorderRadius.circular(4),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        width: 130,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 5),
                            Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                Container(
                                  width: 130,
                                  height: 160,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: Colors.grey.shade800,
                                    image: const DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                        'https://upload.wikimedia.org/wikipedia/en/9/95/Train_to_Busan.jpg',
                                      ),
                                    ),
                                  ),
                                ),
                                const Positioned(
                                  left: 4,
                                  bottom: 4,
                                  child: HDWidget(),
                                ),
                              ],
                            ),
                            const SizedBox(height: 4),
                            Text(
                              'Train to Busan',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                            const SizedBox(height: 4),
                            Text(
                              'a hit man wanting to go straight, lets his',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.white.withOpacity(.6),
                                fontSize: 14,
                              ),
                            ),
                            const SizedBox(height: 20)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Made for You',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  TextButton(
                    onPressed: () {
                      Get.toNamed(AppRoutes.MADEFORYOU_ROUTE);
                    },
                    child: Text(
                      'View More',
                      style: TextStyle(color: Colors.white.withOpacity(.5)),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            SizedBox(
              // height: 10,
              width: double.infinity,
              // color: Colors.blue,
              child: SingleChildScrollView(
                padding: const EdgeInsets.only(left: 15, right: 10),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    3,
                    (index) => InkWell(
                      // autofocus: true,
                      onTap: () {},
                      borderRadius: BorderRadius.circular(4),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        width: 250,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 5),
                            Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      width: 250,
                                      height: 160,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        color: Colors.grey.shade800,
                                        image: const DecorationImage(
                                          fit: BoxFit.cover,
                                          image: NetworkImage(
                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT01_RaYy0zo3ASQy_32p0oBj17ri34MTMVpB7uttpYTnwhE5Iq44JFp04uxNagtfk-jgc&usqp=CAU',
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 5)
                                  ],
                                ),
                                const Positioned(
                                  right: 8,
                                  top: 8,
                                  child: ImdbRate(),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
