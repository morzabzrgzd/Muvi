import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/custom_text_field.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0xffFFD130),
          ),
        ),
        backgroundColor: Colors.black,
        title: const Text('Edit Profile'),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {},
          child: Text(
            'Save Changes',
            style: Theme.of(context).textTheme.labelSmall,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 24),
              CircleAvatar(
                radius: 57,
                backgroundColor: const Color(0xffFFD130),
                child: CircleAvatar(
                  radius: 55,
                  backgroundColor: Colors.grey.shade800,
                  backgroundImage: const NetworkImage(
                    'https://wisehealthynwealthy.com/wp-content/uploads/2022/01/CreativecaptionsforFacebookprofilepictures.jpg',
                  ),
                ),
              ),
              const SizedBox(height: 10),
              OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        5,
                      ),
                    ),
                    side: const BorderSide(
                      color: Colors.white60,
                      width: 0.8,
                    )),
                onPressed: () {},
                icon: const Icon(
                  FeatherIcons.edit,
                  size: 16,
                  color: Color(0xffFFD130),
                ),
                label: const Text(
                  'Change Avatar',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(height: 32),
              const CustomTextField(
                icon: FeatherIcons.user,
                keyboardType: TextInputType.name,
                lable: 'Name',
                obscureText: false,
              ),
              const SizedBox(height: 24),
              const CustomTextField(
                icon: FeatherIcons.mail,
                keyboardType: TextInputType.emailAddress,
                lable: 'Email',
                obscureText: false,
              ),
              const SizedBox(height: 24),
              const CustomTextField(
                icon: FeatherIcons.phone,
                keyboardType: TextInputType.number,
                lable: 'Phone Number',
                obscureText: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
