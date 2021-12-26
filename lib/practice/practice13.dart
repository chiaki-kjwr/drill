import 'package:flutter/material.dart';

class Practice13 extends StatelessWidget {
  const Practice13({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flex(
              direction: Axis.vertical,
              children: [
                Expanded(
                  child: Stack(children: [
                    Image(
                      image: AssetImage('images/dice1.png'),
                      width: 100,
                      height: 100,
                    ),
                    Positioned(
                      top: 5,
                      right: 1,
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        // child: Align(
                        //   alignment: Alignment(60, 10),
                        child: Center(
                          child: Text(
                            'NEW',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // ),
                  ]),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
