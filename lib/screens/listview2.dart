import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final options = const [
    'Halo',
    'Gears of Wars',
    'Injustice',
    'Mario Kart',
    'Burnout'
  ];

  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // elevation: 0,
          //backgroundColor: const Color(0xff0C73A7),
          title: const Text('ListView Dos'),
        ),
        body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(options[index]),
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
              color: Color(0xff0C73A7),
            ),
            onTap: () {
              final game = options[index];
              print(game);
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
