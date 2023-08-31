import 'package:flutter/material.dart';
import '../../components/custom_gridview.dart';
import 'components/custom_search_text_field.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.black,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white.withOpacity(.2),
            ),
            child: const CustomSerachTextField(),
          ),
        ),
      ),
      body: const CustomGridView(
        img:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJwILHrTbnW7cQMva2v4dzyfs8wSaRXM-fTg&usqp=CAU',
        des: '2019 American coming-of-age yuo',
        title: 'Maze Runner - Guide to Tjfd',
        h: 250,
      ),
    );
  }
}
