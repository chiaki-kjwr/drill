import 'package:flutter/material.dart';

class Practice12 extends StatelessWidget {
  const Practice12({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Container(
                color: Colors.blue,
                width: 100,
                height: 100,
                child: Center(child: Text('角丸')),
              )),
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32), color: Colors.blue),
            child: Center(child: Text('角丸')),
          ),
          Container(
            width: 100,
            height: 100,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
            child: Center(child: Text('丸')),
          )
        ],
      ),
    );
  }
}
