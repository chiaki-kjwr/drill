import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Practice16 extends StatelessWidget {
  const Practice16({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.blue),
                      ))),
                  onPressed: () async {
                    final url = 'https://www.yahoo.co.jp/';
                    await launch(url);
                  },
                  child: Text(
                    'デバイスのライブラリから開く',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.blue),
                    ))),
                onPressed: () async {
                  final url = 'https://mixi.co.jp/';
                  if (await canLaunch(url)) {
                    launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                child: Text(
                  'カメラで撮影する',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
