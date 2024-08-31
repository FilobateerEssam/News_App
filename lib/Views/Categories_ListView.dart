import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Components/Category_card.dart';
import 'package:news_app/Models/Category_model.dart';

class Categories_ListView extends StatelessWidget {
  const Categories_ListView({
    super.key,
  });

  final List<CategoryModel> Categories = const [
    CategoryModel(
      image: 'assets/sports.avif',
      categoryName: "Sports",
    ),
    CategoryModel(
      image: 'assets/health.avif',
      categoryName: "Health",
    ),
    CategoryModel(
      image: 'assets/entertaiment.avif',
      categoryName: "Entertainment",
    ),
    CategoryModel(
      image: 'assets/business.avif',
      categoryName: "Business",
    ),
    CategoryModel(
      image: 'assets/technology.jpeg',
      categoryName: "Technology",
    ),
    CategoryModel(
      image: 'assets/science.avif',
      categoryName: "Science",
    ),
    CategoryModel(
      image: 'assets/general.avif',
      categoryName: "General",
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: Categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(categoryModel: Categories[index],);
        },
      ),
    );
  }
}
