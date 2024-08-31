import 'package:flutter/material.dart';
import 'package:news_app/Components/News_Tile.dart';

class News_ListView extends StatelessWidget {
  const News_ListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: 10, 
        (context, inedx) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 22.0),
        child: NewsTile(),
      );
    }));

    // ListView.builder(
    //   shrinkWrap: true,
    //   physics: NeverScrollableScrollPhysics(),
    //   // physics: const BouncingScrollPhysics(),
    //   itemCount: 10,
    //   itemBuilder: (context, index) {
    //     return Padding(
    //       padding: const EdgeInsets.only(bottom: 22),
    //       child: NewsTile(),
    //     );
    //   },
    // );
  }
}
