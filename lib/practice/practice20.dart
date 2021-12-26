import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Practice20 extends StatelessWidget {
  const Practice20({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset('assets/santa.json'),
    );
  }
}
