import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key,
    required this.onTap,
    required this.icon,
  });

  final VoidCallback onTap;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 50,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: const BorderSide(
            color: Colors.transparent,
            width: 0,
          ),
          backgroundColor: const Color(0xff2D2F33),
          padding: const EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        onPressed: onTap,
        child: SvgPicture.asset(
          icon,
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}
