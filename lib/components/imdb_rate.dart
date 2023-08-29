import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class ImdbRate extends StatelessWidget {
  const ImdbRate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 26,
      height: 16,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(3),
      ),
      child: const Text(
        '8.2',
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 12),
      ),
    );
  }
}
