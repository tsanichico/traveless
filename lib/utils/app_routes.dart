import 'package:flutter/material.dart';
import 'package:traveless/ui/screens/detail_screen.dart';
import 'package:traveless/ui/screens/home_screen.dart';
import 'package:traveless/ui/screens/loading_screen.dart';
import 'package:traveless/ui/screens/success_screen.dart';
import 'package:traveless/widgets/categories_card.dart';

abstract class AppRoutes {
  static const String loadingScreen = 'loading_screen';
  static const String homeScreen = 'home_screen';
  static const String detailScreen = 'detail_screen';
  static const String successScreen = 'success_screen';
}

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    Widget screen;
    switch (settings.name) {
      case AppRoutes.loadingScreen:
        screen = LoadingScreen();
        break;
      case AppRoutes.homeScreen:
        screen = HomeScreen();
        break;
      case AppRoutes.detailScreen:
        screen = DetailScreen();
        break;
      case AppRoutes.successScreen:
        screen = SuccessScreen();
        break;
      default:
        screen = LoadingScreen();
        break;
    }
    return MaterialPageRoute(builder: (_) => screen);
  }
}
