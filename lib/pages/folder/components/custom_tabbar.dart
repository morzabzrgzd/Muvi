import 'package:flutter/material.dart';

class CustomTabbar extends StatelessWidget {
  const CustomTabbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Row(
        children: [
          const Expanded(
            flex: 2,
            child: SizedBox(
              width: double.infinity,
              // height: 100,
              // color: Colors.black,
              child: TabBar(
                labelColor: Color(0xffFFD130),
                indicatorColor: Color(0xffFFD130),
                tabs: [
                  Tab(text: 'My List'),
                  Tab(text: 'Downloaded'),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(),
          )
        ],
      ),
    );
  }
}
