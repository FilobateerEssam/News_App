import 'package:flutter/material.dart';
import 'package:news_app/Components/Category_card.dart';
import 'package:news_app/Components/News_Tile.dart';
import 'package:news_app/Views/Categories_ListView.dart';
import 'package:news_app/Views/News_ListView.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'News',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Text(
              'Cloud',
              style: TextStyle(color: Colors.orange),
            ),
          ],
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: Categories_ListView(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 32,
                ),
              ),
              News_ListView(),
            ],
          )
          // Column(
          //   children: [
          //     Categories_ListView(),
          //     SizedBox(
          //       height: 32,
          //     ),
          //     Expanded(child: News_ListView()),
          //   ],
          // ),
          ),
    );
  }
}
