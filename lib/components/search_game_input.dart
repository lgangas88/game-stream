import 'package:flutter/material.dart';
import 'package:game_stream/theme.dart';

class SearchGameInput extends StatelessWidget {
  const SearchGameInput({
    Key? key,
    required this.onSubmitted,
  }) : super(key: key);

  final Function(String value) onSubmitted;

  @override
  Widget build(BuildContext context) {
    return TextField(
      textInputAction: TextInputAction.search,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.zero,
        hintText: 'Buscar juego',
        fillColor: CustomColors.primaryBlueGray,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: BorderSide.none,
        ),
        prefixIcon: Icon(
          Icons.search,
          color: Colors.white.withOpacity(.5),
        ),
      ),
      onSubmitted: (text) {},
    );
  }
}
