import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/custom_text_field.dart';
import '../../components/social_btn.dart';
import '../../constants/app_routes.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

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
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            Get.offAllNamed(AppRoutes.MAIN_ROUTE);
          },
          child: Text(
            'Register',
            style: Theme.of(context).textTheme.labelSmall,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            Text(
              'Create Account',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 10),
            const Text(
              'Enter information below or login with social\naccount to get started',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 30),
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
            const SizedBox(height: 20),
            const CustomTextField(
              icon: CupertinoIcons.lock,
              keyboardType: TextInputType.visiblePassword,
              lable: 'Confirmation Password',
              obscureText: true,
            ),
            const SizedBox(height: 40),
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
    );
  }
}
