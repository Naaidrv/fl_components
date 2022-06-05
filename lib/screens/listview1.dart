import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final options = const [
    'Halo',
    'Gears of Wars',
    'Injustice',
    'Mario Kart',
    'Burnout'
  ];

  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView Uno'),
        ),
        body: ListView(children: [
          ...options
              .map((game) => ListTile(
                    title: Text(game),
                    trailing: const Icon(Icons.arrow_forward_ios_outlined),
                  ))
              .toList(),
        ]));
  }
}
