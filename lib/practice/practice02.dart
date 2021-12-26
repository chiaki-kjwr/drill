import 'package:flutter/material.dart';

class Practice2 extends StatelessWidget {
  Practice2({Key? key}) : super(key: key);
  final titles = [
    '今日のニュース',
    '昨日のニュース',
    '先週のニュース',
    '1ヶ月前のニュース',
    '1年前のニュース',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: titles.length,
      itemBuilder: (context, index) {
      return Column(
        children: [
          ListTile(
            title: Text(
              titles[index],
            ),
            trailing: const Text('詳細へ'),
          ),
          const Divider(),
        ],
      );
    });
  }
}
