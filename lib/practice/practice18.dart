import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Practice18 extends StatelessWidget {
  const Practice18({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text('公式HP'),
              onTap: () async {
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
            ),
            ListTile(
              title: Text('IR情報'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WebViewExample(),
                    ));
              },
            ),
            ListTile(
              title: Text('採用情報'),
              onTap: () async {
                final url = 'https://flutter.dev/';
                if (await canLaunch(
                  url,
                )) {
                  launch(
                    url,
                    forceSafariVC: true,
                    forceWebView: true,
                  );
                } else {
                  throw 'Could not launch $url';
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

class WebViewExample extends StatelessWidget {
  const WebViewExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: WebView(
        initialUrl: 'https://flutter.dev',
      ),
    );
  }
}
