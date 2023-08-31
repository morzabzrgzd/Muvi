import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:muvi/components/imdb_rate.dart';

class MadeForYouPage extends StatelessWidget {
  const MadeForYouPage({super.key});

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
        backgroundColor: const Color(0xff202123),
        title: const Text('Made for You'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 16),
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 12),
                width: double.infinity,
                height: 190,
                decoration: BoxDecoration(
                  color: Colors.grey.shade800,
                  borderRadius: BorderRadius.circular(5),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      'https://mb.cision.com/Public/14247/2902071/856b720fb81856ec_org.jpg',
                    ),
                  ),
                ),
              ),
              const Positioned(
                right: 8,
                top: 8,
                child: ImdbRate(),
              ),
            ],
          );
        },
      ),
    );
  }
}
