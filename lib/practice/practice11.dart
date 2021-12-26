import 'package:flutter/material.dart';

class Practice11 extends StatelessWidget {
  const Practice11({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Center(
        child: Container(
      width: size.width * 0.8,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: 200,
          maxWidth: 320,
        ),
        child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
          ),
          onPressed: () {},
          child: Text(
            '横幅はいつも一定',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    ));
  }
}
