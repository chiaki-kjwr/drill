import 'package:flutter/material.dart';

class Practice4 extends StatelessWidget {
  const Practice4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloodTypes = [
      'A型',
      'B型',
      'O型',
      'AB型',
    ];

    return SafeArea(
      child: GridView.builder(
          itemCount: bloodTypes.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(4),
              child: Container(
                color: Colors.blue,
                child: Center(child: Text(bloodTypes[index])),
              ),
            );
          }),
    );
  }
}