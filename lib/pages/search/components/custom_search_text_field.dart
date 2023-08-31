import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CustomSerachTextField extends StatelessWidget {
  const CustomSerachTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorWidth: 1.2,
      // obscureText: obscureText,
      cursorColor: const Color(0xffFFD130),
      cursorHeight: 19,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 16,
      ),
      textInputAction: TextInputAction.search,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: () {},
          icon: const Icon(CupertinoIcons.search),
          color: Colors.grey,
          // splashRadius: 10,
        ),
        filled: false,
        // isCollapsed: false,
        // isDense: true,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
        hintText: 'Search any movie, genre, or cast.',
        fillColor: Colors.white.withOpacity(.2),
        border: InputBorder.none,
      ),
    );
  }
}
