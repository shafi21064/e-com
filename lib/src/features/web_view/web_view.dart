import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class News extends StatefulWidget {

  String newsUrl;

  News({super.key,  required this.newsUrl});

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
//     WebViewController controller = WebViewController();
//       ..setJavaScriptMode(JavaScriptMode.unrestricted)
//       ..setBackgroundColor(const Color(0x00000000))
//       ..setNavigationDelegate(
//         NavigationDelegate(
//           onProgress: (int progress) {
// // Update loading bar.
//           },
//           onPageStarted: (String url) {},
//           onPageFinished: (String url) {},
//           onWebResourceError: (WebResourceError error) {},
//           onNavigationRequest: (NavigationRequest request) {
//             if (request.url.startsWith('https://www.youtube.com/')) {
//               return NavigationDecision.prevent;
//             }
//             return NavigationDecision.navigate;
//           },
//         ),
//       )
//       ..loadRequest(Uri.parse(widget.newsUrl));

    return WebView(
      initialUrl: 'https://google.com',
    );
  }
}