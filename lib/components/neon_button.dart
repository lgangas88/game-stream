import 'package:flutter/material.dart';
import 'package:game_stream/theme.dart';

class NeonButton extends StatelessWidget {
  const NeonButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(12), boxShadow: [
        BoxShadow(
          blurRadius: 8,
          color: CustomColors.secondaryCian.withOpacity(.3),
        )
      ]),
      child: OutlinedButton(
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}
