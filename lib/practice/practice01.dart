import 'package:flutter/material.dart';

class Practice1 extends StatelessWidget {
  const Practice1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              height: 200,
              color: Colors.yellow,
              child: const Center(child: Text('Main')),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.red,
                    child: Center(child: Text('A')),
                  ),
                ),
                Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.blue,
                      child: Center(child: Text('B')),
                    )),
                Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.green,
                      child: Center(child: Text('C')),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
