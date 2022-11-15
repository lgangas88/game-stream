import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:game_stream/pages/login-signup/login_form.dart';
import 'package:game_stream/pages/login-signup/signup_form.dart';

class LoginSignupPage extends StatelessWidget {
  const LoginSignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: SvgPicture.asset('assets/images/logo.svg'),
              ),
              const SizedBox(height: 32),
              const Expanded(child: _Body()),
            ],
          ),
        ),
      ),
    );
  }
}

class _Body extends StatefulWidget {
  const _Body({
    Key? key,
  }) : super(key: key);

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  late final PageController pageController;
  bool isLoginForm = true;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _tabBar(context),
        Expanded(
          child: PageView(
            controller: pageController,
            physics: const NeverScrollableScrollPhysics(),
            children: const [
              LoginForm(),
              SignupForm(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _tabBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
            ),
            onPressed: () {
              setState(() {
                pageController.jumpToPage(0);
                isLoginForm = true;
              });
            },
            child: Text(
              'INICIAR SESIÓN',
              style: Theme.of(context).textTheme.button!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white.withOpacity(isLoginForm ? 1 : .5)),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
            ),
            onPressed: () {
              setState(() {
                pageController.jumpToPage(1);
                isLoginForm = false;
              });
            },
            child: Text(
              'REGÍSTRATE',
              style: Theme.of(context).textTheme.button!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white.withOpacity(isLoginForm ? .5 : 1)),
            ),
          ),
        ],
      ),
    );
  }
}
