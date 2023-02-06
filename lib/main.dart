import 'package:components/router/app_routes.dart';
import 'package:components/screens/screens.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //home: const ListView2Screen(),
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.routes,
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}
