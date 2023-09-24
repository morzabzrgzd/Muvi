import 'package:accordion/accordion.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_expanded_tile/flutter_expanded_tile.dart';
import 'package:get/get.dart';
import 'package:muvi/models/help%20FAQ/help_model.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

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
        title: const Text('Help, FAQ'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: List.generate(
            helps.length,
            (index) => Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: ExpandedTile(
                contentseparator: 0,
                // disableAnimation: false,
                trailing: const Icon(
                  Icons.keyboard_arrow_down,
                  color: Color(0xffFFD130),
                  // size: 25,
                ),
                trailingRotation: 180,
                theme: ExpandedTileThemeData(
                  headerColor: const Color(0xff303030),
                  headerRadius: 0,
                  headerPadding:
                      const EdgeInsets.only(bottom: 14, top: 14, right: 10),
                  headerSplashColor: Colors.grey.shade700,
                  contentBackgroundColor: const Color(0xff303030),
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                  contentRadius: 0,
                ),
                controller: ExpandedTileController(),
                title: Text(
                  "${helps[index].title}",
                  style: const TextStyle(fontSize: 17),
                ),
                content: Text(
                  '${helps[index].content}',
                  style: const TextStyle(fontSize: 16, color: Colors.white70),
                ),
                onTap: () {
                  debugPrint("tapped!!");
                },
              ),
            ),
          ),
        ),
      ),
      //* Starting V0.3.4 : ExpandedTileList.builder widget is available.
    );
  }
}
