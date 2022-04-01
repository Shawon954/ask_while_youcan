import 'package:ask_while_youcan/home_page.dart';
import 'package:flutter/material.dart';
class MobileScreen extends StatefulWidget {
  const MobileScreen({Key? key}) : super(key: key);

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}
