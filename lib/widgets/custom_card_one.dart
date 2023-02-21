import 'package:flutter/material.dart';
import 'package:components/theme/app_theme.dart';

class CustomCardOne extends StatelessWidget {
  const CustomCardOne({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            title: Text('Este es un titulo'),
            leading: Icon(Icons.photo_camera, color: AppTheme.primary),
            subtitle: Text(
                'Aliquip proident voluptate proident officia Lorem Lorem. Pariatur ex fugiat cupidatat duis excepteur ut in. Mollit do nisi qui minim fugiat cillum.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Cancelar'),
                ),
                TextButton(onPressed: () {}, child: const Text('Aceptar')),
              ],
            ),
          )
        ],
      ),
    );
  }
}
