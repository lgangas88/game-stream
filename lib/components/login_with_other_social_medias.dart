import 'package:flutter/material.dart';
import 'package:game_stream/theme.dart';

class LoginWithOtherSocialMedias extends StatelessWidget {
  const LoginWithOtherSocialMedias({
    Key? key,
    required this.description,
  }) : super(key: key);

  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          description,
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: Colors.white),
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MaterialButton(
              elevation: 0,
              color: CustomColors.primaryBlueGray,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              onPressed: () {},
              child: Text(
                'Facebook',
                style: Theme.of(context)
                    .textTheme
                    .button!
                    .copyWith(color: Colors.white),
              ),
            ),
            MaterialButton(
              elevation: 0,
              color: CustomColors.primaryBlueGray,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              onPressed: () {},
              child: Text(
                'Twitter',
                style: Theme.of(context)
                    .textTheme
                    .button!
                    .copyWith(color: Colors.white),
              ),
            ),
          ],
        )
      ],
    );
  }
}
