import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muvi/components/hd_widget.dart';

import '../../components/custom_gridview.dart';

class PopularMoviesPage extends StatelessWidget {
  const PopularMoviesPage({super.key});

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
        title: const Text('Popular Movies'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          childAspectRatio: 1 / 1.6,
          crossAxisSpacing: 8,
        ),
        itemCount: 6,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            borderRadius: BorderRadius.circular(5),
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Container(
                        height: 214,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.grey.shade800,
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfLuf6qsIjXS-TJSw_UZGmT-H53qe3QCFlOaXtVxfHG6qYAEPFxoXIEgLdMSM9oY3x85M&usqp=CAU',
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 8,
                        bottom: 8,
                        child: HDWidget(),
                      )
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Maze Runner - Guide to Tjfd',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Maze Runner - Guide to Tjfd',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white.withOpacity(.6),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
