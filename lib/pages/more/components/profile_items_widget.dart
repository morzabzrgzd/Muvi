import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileItems extends StatelessWidget {
  const ProfileItems({
    super.key,
    required this.onTap,
    required this.title,
    this.titleColor = Colors.white,
  });

  final VoidCallback onTap;
  final String title;
  final Color titleColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(color: titleColor, fontSize: 18),
            ),
            const Icon(
              CupertinoIcons.forward,
              size: 18,
              color: Colors.white54,
            )
          ],
        ),
      ),
    );
  }
}
