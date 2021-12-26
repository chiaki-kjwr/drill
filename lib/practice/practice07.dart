import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Practice7 extends StatelessWidget {
  const Practice7({Key? key}) : super(key: key);

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
                    final url = 'https://flutter.dev/';
                    await launch(
                      url,
                      forceSafariVC: true,
                      forceWebView: true,
                    );
                  },
                  child: Text(
                    'アプリ内外部ブラウザ',
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
                  final url = 'https://flutter.dev/';
                  if (await canLaunch(url)) {
                    launch(
                      url,
                      forceSafariVC: false,
                      forceWebView: false,
                    );
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                child: Text(
                  '外部ブラウザ',
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
