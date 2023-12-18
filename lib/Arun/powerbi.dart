/* import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class WebView extends StatefulWidget {
  const WebView({super.key,required this.controller});

  final WebViewController controller;

  @override
  State<WebView> createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {
var loadingpercentage = 0;
  void initstate(){

    super.initState();
    widget.controller..setNavigationDelegate(
      NavigationDelegate(
        onPageStarted: (url){
          setState(() {
            loadingpercentage=0;
          });
        },
        onProgress: (progress){
          setState(() {
            loadingpercentage=progress;
          });
    },
    onPageFinished: (url){
          setState(() {
            loadingpercentage=100;
          });
    },
      ),
    )..setJavaScriptMode(JavaScriptMode.unrestricted)..addJavaScriptChannel(('snake bar'), onMessageReceived: (message){
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(message.message)));
    });
  }
  Widget build(BuildContext context) {
    return Stack(
      children: [
        WebViewWidget(controller: widget.controller),
        if(loadingpercentage<100)
          LinearProgressIndicator(
           value: loadingpercentage/100.0,
          )

      ],
    );
  }
}
*/