import 'package:flutter/material.dart';

class HDWidget extends StatelessWidget {
  const HDWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 23,
      height: 18,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(3),
      ),
      child: const Text(
        'HD',
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 12),
      ),
    );
  }
}
