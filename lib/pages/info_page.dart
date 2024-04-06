import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text("CashFLow"),
        SizedBox(
          height: 10,
        ),
        Text("Developed by Sharjeel using Flutter"),
        InkWell(
          onTap: _launchURL,
          child: Text(
            "https://github.com/Sharjeel21",
            style: TextStyle(color: Colors.blue),
          ),
        ),
        Expanded(child: SizedBox.shrink()),
        Text("Version 1.0"),
        SizedBox(
          height: 5,
        )
      ],
    );
  }
}

_launchURL() async {
  const url = 'https://github.com/Sharjeel21';
  final uri = Uri.parse(url);
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
