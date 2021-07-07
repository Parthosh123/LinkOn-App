import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class WebViewPage extends StatefulWidget {
  WebViewPage({this.title, this.url});
  final String title;
  final String url;


  @override
  _WebViewPageState createState() => _WebViewPageState(this.title, this.url);

}
class _WebViewPageState extends State<WebViewPage> {

  String title;
  String url;
  bool isLoading=true;
  final _key = UniqueKey();
  _WebViewPageState(this.title, this.url);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[900],
        title: Text("$title"),
        actions: [
          TextButton(
              child: Center(child: Text("Browser 🌎 "),),
              onPressed: () async {
                if (await canLaunch("$url")) {
                  await launch("$url",forceSafariVC: false,
                    forceWebView: false,);
                }
              }
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[ WebView(
          key: _key,
          initialUrl: "$url",
          javascriptMode: JavascriptMode.unrestricted,
          onPageFinished: (finish) {
            setState(() {
              isLoading = false;
            });
          },
          navigationDelegate: (request) {
            if (request.url.contains('connect-success')) {
              print('connection successful');
            } else if (request.url.contains('connect-fail')) {
              Text("Connection Failed");
            }
            return NavigationDecision.navigate;
          },

        ),
          isLoading ? Center( child: CircularProgressIndicator(),)
              : Stack(),
        ],
      ),
    );

  }
}
