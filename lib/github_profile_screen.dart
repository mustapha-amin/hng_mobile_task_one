import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class GithubProfileScreen extends StatefulWidget {
  const GithubProfileScreen({super.key});

  @override
  State<GithubProfileScreen> createState() => _GithubProfileScreenState();
}

class _GithubProfileScreenState extends State<GithubProfileScreen> {
  late WebViewController webViewController;

  @override
  void initState() {
    webViewController = WebViewController()
      ..loadRequest(Uri.parse("https://github.com/mustapha-amin"));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: WebViewWidget(
          controller: webViewController,
        ),
      ),
    );
  }
}
