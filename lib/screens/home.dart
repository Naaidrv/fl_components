import 'package:components/router/app_routes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
        elevation: 0,
      ),
      body: ListView.separated(
          itemBuilder: (context, i) => ListTile(
                leading: Icon(menuOptions[i].icon,
                    color: Color.fromARGB(255, 12, 60, 116)),
                title: Text(menuOptions[i].name),
                onTap: (() {
                  Navigator.pushNamed(context, menuOptions[i].route);

                  //final route = MaterialPageRoute(
                  //  builder: (context) => const ListView1Screen());
                  //Navigator.pushReplacement(context, route);
                }),
              ),
          separatorBuilder: ((_, __) => const Divider()),
          itemCount: menuOptions.length),
    );
  }
}
