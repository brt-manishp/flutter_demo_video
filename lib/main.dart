import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {



  final String data =
      """ <div class="videoEmbed"><iframe allowfullscreen="" frameborder="0"  
                          height="349" mozallowfullscreen="" 
                          src="https://player.vimeo.com/video/359780350? 
                          badge=0" webkitallowfullscreen="" width="560"></iframe></div> """;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Container(
        color: Colors.white,
        child: Center(
          child: _convertToHTML(),
        ),
      ),
    );
  }

  Widget _convertToHTML() {
    return HtmlWidget(
      data,
      webView: true,
      webViewJs: true,
      unsupportedWebViewWorkaroundForIssue37: true,
      enableCaching: true,
    );
  }
}
