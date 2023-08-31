import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                  radius: 35,
                  backgroundColor: Colors.grey.shade800,
                  backgroundImage: const NetworkImage(
                    'https://wisehealthynwealthy.com/wp-content/uploads/2022/01/CreativecaptionsforFacebookprofilepictures.jpg',
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
                  onPressed: () {},
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
    );
  }
}
