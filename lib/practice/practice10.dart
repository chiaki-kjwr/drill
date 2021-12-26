import 'package:flutter/material.dart';

class Practice10 extends StatelessWidget {
  const Practice10({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        child: PageView(
          children: [
            Center(
                child: Container(
              height: 200,
              width: 200,
              color: Colors.blue,
              child: Center(child: Text('1')),
            )),
            Center(
                child: Container(
              height: 200,
              width: 200,
              color: Colors.green,
              child: Center(child: Text('2')),
            )),
            Center(
                child: Container(
              height: 200,
              width: 200,
              color: Colors.orange,
              child: Center(child: Text('3')),
            ))
          ],
        ),
      ),
    );
  }
}
