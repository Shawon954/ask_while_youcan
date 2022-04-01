import 'package:ask_while_youcan/home_page.dart';
import 'package:flutter/material.dart';
class TabletScreen extends StatefulWidget {
  const TabletScreen({Key? key}) : super(key: key);

  @override
  State<TabletScreen> createState() => _TabletScreenState();
}

class _TabletScreenState extends State<TabletScreen> {
  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}
