import 'package:flutter/material.dart';
import '../app_bar.dart';

class Bab1_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar.buildAppBar(context, false, 'PENDAHULUAN'),
    );
  }
}
