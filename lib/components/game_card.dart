import 'package:flutter/material.dart';
import 'package:game_stream/theme.dart';

class GameCard extends StatelessWidget {
  const GameCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: CustomColors.primaryBlueGray,
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(4)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Placeholder(),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              'The witcher 3',
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
