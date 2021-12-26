import 'package:drill/practice/practice09.dart';
import 'package:flutter/material.dart';

class Practice8 extends StatelessWidget {
  const Practice8({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
          ),
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('タイトル'),
                    content: Text('ダイアログの内容を表示させます。'),
                    actions: [
                      TextButton(
                        onPressed: () {},
                        child: Text('YES'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Practice9(),
                            ),
                            (_) => false,
                          );
                        },
                        child: Text('No'),
                      )
                    ],
                  );
                });
          },
          child: Text(
            'ダイアログ表示',
            style: TextStyle(
              color: Colors.white,
            ),
          )),
    );
  }
}
