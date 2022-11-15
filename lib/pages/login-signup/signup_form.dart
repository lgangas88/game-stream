import 'package:flutter/material.dart';
import 'package:game_stream/components/login_with_other_social_medias.dart';
import 'package:game_stream/components/neon_button.dart';
import 'package:game_stream/theme.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({Key? key}) : super(key: key);

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
                  description: 'Regístrate con redes sociales',
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
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  final FocusNode _emailFocus = FocusNode();
  final FocusNode _passwordFocus = FocusNode();
  final FocusNode _confirmPasswordFocus = FocusNode();

  @override
  void initState() {
    super.initState();
    _emailFocus.addListener(() {
      setState(() {});
    });
    _passwordFocus.addListener(() {
      setState(() {});
    });
    _confirmPasswordFocus.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _emailFocus.dispose();
    _passwordFocus.dispose();
    _confirmPasswordFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Elije una foto de perfil',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Puedes cambiar o elegirla más adelante',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: Colors.white.withOpacity(.5),
                      ),
                ),
                const SizedBox(height: 24),
                Container(
                  width: 84,
                  height: 84,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: GestureDetector(
                    onTap: () {},
                    child: Stack(
                      children: [
                        const CircleAvatar(
                          radius: 42,
                          backgroundColor: CustomColors.primaryBlueGray,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(.2),
                            shape: BoxShape.circle,
                          ),
                        ),
                        const Center(
                          child: Icon(Icons.camera_alt_outlined),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 48),
          Text(
            'Correo electrónico',
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                color: _emailFocus.hasFocus
                    ? CustomColors.secondaryDarkCian
                    : Colors.white),
          ),
          TextFormField(
            controller: _emailController,
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
            controller: _passwordController,
            focusNode: _passwordFocus,
            obscureText: true,
            decoration: const InputDecoration(
              hintText: '*******',
            ),
          ),
          const SizedBox(height: 36),
          Text(
            'Confirmar contraseña',
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                color: _confirmPasswordFocus.hasFocus
                    ? CustomColors.secondaryDarkCian
                    : Colors.white),
          ),
          TextFormField(
            controller: _confirmPasswordController,
            focusNode: _confirmPasswordFocus,
            obscureText: true,
            decoration: const InputDecoration(
              hintText: '*******',
            ),
          ),
          const SizedBox(height: 52),
          NeonButton(
            text: 'REGÍSTRATE',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
