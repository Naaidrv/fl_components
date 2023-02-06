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
      initialRoute: 'Home',
      routes: {
        'Home': (BuildContext context) => const HomeScreen(),
        'ListView1': (BuildContext context) => const ListView1Screen(),
        'ListView2': (BuildContext context) => const ListView2Screen(),
        'AlertScreen': (BuildContext context) => const AlertScreen(),
        'CardScreen': (BuildContext context) => const CardScreen()
      },
      onGenerateRoute: (settings) {
        print(settings);
        return MaterialPageRoute(
          builder: (context) => const AlertScreen(),
        );
      },
    );
  }
}
