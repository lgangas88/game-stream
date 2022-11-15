import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:game_stream/pages/profile/profile_page.dart';
import 'package:game_stream/pages/welcome/welcome_page.dart';
import 'package:game_stream/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          IndexedStack(
            index: page,
            children: [
              ProfilePage(),
              WelcomePage(),
            ],
          ),
          CustomBottomNavigationBar(
            page: page,
            onChange: (index) {
              setState(() {
                page = index;
              });
            },
          ),
        ],
      ),
      
    );
  }
}

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    Key? key,
    required this.page,
    required this.onChange,
  }) : super(key: key);

  final int page;
  final Function(int index) onChange;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 10.0,
            sigmaY: 10.0,
          ),
          child: BottomNavigationBar(
            elevation: 0,
            currentIndex: page,
            backgroundColor: CustomColors.primaryBlueGray.withOpacity(.8),
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white.withOpacity(.5),
            onTap: onChange,
            items: const [
              BottomNavigationBarItem(
                backgroundColor: Colors.transparent,
                icon: Icon(Icons.person_outline),
                label: 'Perfil',
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.transparent,
                icon: Icon(Icons.gamepad_outlined),
                label: 'Juegos',
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.transparent,
                icon: Icon(Icons.home_outlined),
                label: 'Inicio',
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.transparent,
                icon: Icon(Icons.favorite_border_outlined),
                label: 'Favoritos',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
