import 'package:components/screens/screens.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
        elevation: 0,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                title: Text('Nombre de ruta'),
                leading: Icon(Icons.access_time_filled_outlined),
                onTap: (() {
                  Navigator.pushNamed(context, 'alert');

                  //final route = MaterialPageRoute(
                  //  builder: (context) => const ListView1Screen());
                  //Navigator.pushReplacement(context, route);
                }),
              ),
          separatorBuilder: ((_, __) => const Divider()),
          itemCount: 6),
    );
  }
}
