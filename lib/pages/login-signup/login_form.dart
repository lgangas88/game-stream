import 'package:flutter/material.dart';
import 'package:game_stream/components/login_with_other_social_medias.dart';
import 'package:game_stream/components/neon_button.dart';
import 'package:game_stream/theme.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: const [
                _Form(),
                SizedBox(height: 62),
                LoginWithOtherSocialMedias(
                  description: 'Inicia sesión con redes sociales',
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class _Form extends StatefulWidget {
  const _Form({
    Key? key,
  }) : super(key: key);

  @override
  State<_Form> createState() => _FormState();
}

class _FormState extends State<_Form> {
  final FocusNode _emailFocus = FocusNode();
  final FocusNode _passwordFocus = FocusNode();

  @override
  void initState() {
    super.initState();
    _emailFocus.addListener(() {
      setState(() {});
    });
    _passwordFocus.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _emailFocus.dispose();
    _passwordFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Correo electrónico',
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                color: _emailFocus.hasFocus
                    ? CustomColors.secondaryDarkCian
                    : Colors.white),
          ),
          TextFormField(
            focusNode: _emailFocus,
            decoration: const InputDecoration(
              hintText: 'ejemplo@gmail.com',
            ),
          ),
          const SizedBox(height: 36),
          Text(
            'Contraseña',
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                color: _passwordFocus.hasFocus
                    ? CustomColors.secondaryDarkCian
                    : Colors.white),
          ),
          TextFormField(
            focusNode: _passwordFocus,
            obscureText: true,
            decoration: const InputDecoration(
              hintText: '*******',
            ),
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {},
                child: Text(
                  '¿Olvidaste tu contraseña?',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: CustomColors.secondaryDarkCian),
                ),
              ),
            ],
          ),
          const SizedBox(height: 52),
          NeonButton(
            text: 'INICIAR SESIÓN',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
