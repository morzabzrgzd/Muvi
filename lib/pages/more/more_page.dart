import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muvi/constants/app_routes.dart';

import 'components/profile_items_widget.dart';

class MorePage extends StatelessWidget {
  const MorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('More'),
        bottom: PreferredSize(
          preferredSize: const Size(double.infinity, 100),
          child: Container(
            padding: const EdgeInsets.only(
              left: 20,
              right: 10,
              bottom: 16,
              top: 16,
            ),
            color: Colors.black,
            child: Row(
              children: [
                CircleAvatar(
                  radius: 36,
                  backgroundColor: const Color(0xffFFD130),
                  child: CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.grey.shade800,
                    backgroundImage: const NetworkImage(
                      'https://wisehealthynwealthy.com/wp-content/uploads/2022/01/CreativecaptionsforFacebookprofilepictures.jpg',
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Morteza Bozorgzade',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'morza.bezrgzd@gmail.com',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white54,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    Get.toNamed(AppRoutes.EDITPROFILE_ROUTE);
                  },
                  icon: const Icon(
                    FeatherIcons.edit,
                    size: 20,
                    color: Color(0xffFFD130),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Text(
                'General Settings',
                style: TextStyle(
                  color: Colors.white54,
                ),
              ),
            ),
            ProfileItems(
              onTap: () {},
              title: 'App Setting',
            ),
            ProfileItems(
              onTap: () {},
              title: 'Language',
            ),
            ProfileItems(
              onTap: () {},
              title: 'Inbox',
            ),
            ProfileItems(
              onTap: () {},
              title: 'Help, FAQ',
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Text(
                'Terms',
                style: TextStyle(
                  color: Colors.white54,
                ),
              ),
            ),
            ProfileItems(
              onTap: () {},
              title: 'Terms & Condition',
            ),
            ProfileItems(
              onTap: () {},
              title: 'Privacy & Policy',
            ),
            ProfileItems(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      actionsAlignment: MainAxisAlignment.end,
                      // actionsOverflowAlignment: OverflowBarAlignment.center,
                      // actionsOverflowDirection: VerticalDirection.up,
                      // actionsOverflowButtonSpacing: 10,
                      actionsPadding: const EdgeInsets.only(
                          right: 20, left: 20, bottom: 10),
                      titlePadding: const EdgeInsets.only(
                          left: 20, right: 20, top: 15, bottom: 10),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: const Text('Cancel'),
                        ),
                        TextButton(
                          onPressed: () {
                            Get.offAllNamed(AppRoutes.SPLASH_ROUTE);
                          },
                          child: const Text(
                            'Logout',
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ],
                      title: const Text('Logout'),
                      titleTextStyle: const TextStyle(
                        fontSize: 20,
                        fontFamily: 'Nunito',
                        color: Color(0xffFFD130),
                      ),
                      content: const Text(
                        'Are you sure you want to Logout?',
                      ),
                      contentTextStyle: const TextStyle(
                        fontSize: 16,
                        fontFamily: 'Nunito',
                      ),
                      // elevation: ,
                    );
                  },
                );
                // );
              },
              title: 'Logout',
              titleColor: const Color(0xffFFD130),
            ),
          ],
        ),
      ),
    );
  }
}
