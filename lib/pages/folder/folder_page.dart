import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'components/custom_tabbar.dart';

class FolderPage extends StatelessWidget {
  const FolderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: SvgPicture.asset('assets/icons/logo.svg', width: 120),
        ),
        body: Column(
          children: [
            const CustomTabbar(),
            Expanded(
              child: TabBarView(
                children: [
                  ListView.builder(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      return const CustomFolderList(
                        img:
                            'https://trailerbabu.com/wp-content/uploads/2019/11/tanhaji-the-unsung-warrior-3D-movie-trailer-2-poster-horizontal-movie-release-2020-1024x538.jpg',
                        sabk: 'Drama, Asian, Comedy, Series, Series',
                        title: 'Itawewon Class',
                        year: '2023',
                      );
                    },
                  ),
                  ListView.builder(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    itemCount: 2,
                    itemBuilder: (BuildContext context, int index) {
                      return const CustomFolderList(
                        img:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQupPw7XyaKjlHtpezFjGUphfTcixDs7ZxmfQ&usqp=CAU',
                        sabk: 'Drama, Asian, Horrer',
                        title: 'Conjuring 3',
                        year: '2019',
                      );
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomFolderList extends StatelessWidget {
  const CustomFolderList({
    super.key,
    required this.title,
    required this.img,
    required this.year,
    required this.sabk,
  });

  final String title;
  final String img;
  final String year;
  final String sabk;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 8,
        ),
        child: Row(
          children: [
            Container(
              height: 100,
              width: 160,
              decoration: BoxDecoration(
                color: Colors.grey.shade800,
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    img,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: SizedBox(
                height: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      year,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.white.withOpacity(.8),
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      sabk,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.white.withOpacity(.6),
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                // color: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }
}
