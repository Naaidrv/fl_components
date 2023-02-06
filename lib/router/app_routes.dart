import 'package:components/models/models.dart';
import 'package:components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = 'Home';

  static final menuOptions = <MenuOption>[
    MenuOption(route: 'Home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home_filled),
    MenuOption(route: 'ListView1', name: 'ListViewOne', screen: const ListView1Screen(), icon: Icons.list),
    MenuOption(route: 'ListView2', name: 'ListViewTwo', screen: const ListView2Screen(), icon: Icons.list_alt_outlined),
    MenuOption(route: 'AlertScreen', name: 'AlertScreen', screen: const AlertScreen(), icon: Icons.add_alert),
    MenuOption(route: 'CardScreen', name: 'Card', screen: const CardScreen(), icon: Icons.credit_card),
  ];

  static Map<String, Widget Function(BuildContext)> routes = {
    'Home': (BuildContext context) => const HomeScreen(),
    'ListView1': (BuildContext context) => const ListView1Screen(),
    'ListView2': (BuildContext context) => const ListView2Screen(),
    'AlertScreen': (BuildContext context) => const AlertScreen(),
    'CardScreen': (BuildContext context) => const CardScreen()
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
