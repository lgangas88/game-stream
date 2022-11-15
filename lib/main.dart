import 'package:flutter/material.dart';
import 'package:game_stream/pages/game-detail/game_detail_page.dart';
import 'package:game_stream/pages/home/home_page.dart';
import 'package:game_stream/pages/initial-route/initial_route_page.dart';
import 'package:game_stream/pages/login-signup/login_signup_page.dart';
import 'package:game_stream/providers/theme_provider.dart';
import 'package:game_stream/theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ThemeProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Game Stream',
        theme: lighTheme(context),
        initialRoute: '/game-detail',
        routes: {
          '/': (context) => InitialRoutePage(),
          '/login-signup': (context) => LoginSignupPage(),
          '/home': (context) => HomePage(),
          '/game-detail': (context) => GameDetailPage(),
        },
      ),
    );
  }
}
