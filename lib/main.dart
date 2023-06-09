import 'package:flutter/material.dart';
import 'package:traveless/utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Traveless',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      initialRoute: AppRoutes.loadingScreen,
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}
