import 'package:flutter/material.dart';
import '../app_bar.dart';

class Bab3_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar.buildAppBar(context, false, 'VISI DAN MISI'),
    );
  }
}
