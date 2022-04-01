import 'package:ask_while_youcan/home_page.dart';
import 'package:flutter/material.dart';
class WebScreen extends StatefulWidget {
  const WebScreen({Key? key}) : super(key: key);

  @override
  State<WebScreen> createState() => _WebScreenState();
}

class _WebScreenState extends State<WebScreen> {
  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}
