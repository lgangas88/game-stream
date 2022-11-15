import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:game_stream/models/category_game.dart';
import 'package:game_stream/theme.dart';

class CategoryList extends StatelessWidget {
  final List<CategoryGame> categoryList = [
    CategoryGame(id: 0, name: 'FPS', svgPath: 'assets/images/aim.svg'),
    CategoryGame(id: 1, name: 'RPG', svgPath: 'assets/images/cross_swords.svg'),
    CategoryGame(id: 2, name: 'OPEN WORLD', svgPath: 'assets/images/world.svg'),
  ];

  CategoryList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: categoryList.length,
        separatorBuilder: (_, __) {
          return const SizedBox(width: 12);
        },
        itemBuilder: (_, index) {
          final category = categoryList[index];
          return Container(
            height: 80,
            width: 120,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: CustomColors.primaryBlueGray,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(category.svgPath),
                  const SizedBox(height: 8),
                  Text(
                    category.name,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: CustomColors.secondaryCian,
                          fontWeight: FontWeight.bold,
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
