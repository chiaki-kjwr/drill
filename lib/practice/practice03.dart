import 'package:flutter/material.dart';

class Practice3 extends StatelessWidget {
  const Practice3({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            title,
          ),
          trailing: Text('詳細へ'),
        ),
        Divider(),
      ],
    );
  }
}
