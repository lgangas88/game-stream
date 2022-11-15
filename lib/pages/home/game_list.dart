import 'package:flutter/material.dart';
import 'package:game_stream/models/game.dart';
import 'package:game_stream/theme.dart';

class GameList extends StatelessWidget {
  final List<Game> gameList = [
    Game(id: 0, name: '', urlImage: ''),
    Game(id: 1, name: '', urlImage: ''),
    Game(id: 2, name: '', urlImage: ''),
  ];

  GameList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: gameList.length,
        separatorBuilder: (_, __) {
          return const SizedBox(width: 12);
        },
        itemBuilder: (_, index) {
          final game = gameList[index];
          return Container(
            height: 100,
            width: 140,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: CustomColors.primaryBlueGray,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Placeholder(),
          );
        },
      ),
    );
  }
}
