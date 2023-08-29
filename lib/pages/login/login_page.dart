import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:muvi/constants/app_routes.dart';

import '../../components/custom_text_field.dart';
import '../../components/social_btn.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {},
          child: Text(
            'Login',
            style: Theme.of(context).textTheme.labelSmall,
          ),
        ),
      ),
      body: Stack(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: 422,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/loginBg.png'),
                  ),
                ),
              ),
              SizedBox(
                height: 422,
                width: double.infinity,
                child: SvgPicture.asset(
                  'assets/icons/overlay.svg',
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(
                        'assets/icons/logo.svg',
                        // height: 35,
                        width: 120,
                      ),
                      TextButton(
                        onPressed: () {
                          Get.toNamed(AppRoutes.REGISTER_ROUTE);
                        },
                        child: const Text(
                          'REGISTER',
                          style: TextStyle(
                            color: Color(0xffFFD130),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Login',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      const SizedBox(height: 25),
                      const CustomTextField(
                        icon: CupertinoIcons.mail,
                        keyboardType: TextInputType.emailAddress,
                        lable: 'Email',
                        obscureText: false,
                      ),
                      const SizedBox(height: 20),
                      const CustomTextField(
                        icon: CupertinoIcons.lock,
                        keyboardType: TextInputType.visiblePassword,
                        lable: 'Password',
                        obscureText: true,
                      ),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Forgot Password?',
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xffFFD130),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'or continue with',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          SocialButton(
                            icon: 'assets/icons/Google.svg',
                            onTap: () {},
                          ),
                          const SizedBox(width: 16),
                          SocialButton(
                            icon: 'assets/icons/facebook.svg',
                            onTap: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
              ],
            ),
          )
        ],
      ),
    );
  }
}
