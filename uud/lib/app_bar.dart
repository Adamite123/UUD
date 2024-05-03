import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'core/app_export.dart';

class MyAppBar {
  static AppBar buildAppBar(BuildContext context, bool showBackButton, String pageTitle) {
    return AppBar(
      leading: showBackButton ? IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ) : null,
      title: Row(
        children: [
          Image.network(
            'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Garuda_Pancasila%2C_Coat_of_Arms_of_Indonesia.svg/521px-Garuda_Pancasila%2C_Coat_of_Arms_of_Indonesia.svg.png',
            height: 32,
            width: 32,
          ),
          SizedBox(width: 8),
          Expanded(
            child: AutoSizeText(
              pageTitle,
              maxLines: 1, // Ensure text is on one line
              style: theme.textTheme.titleLarge,
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
          icon: Image.asset(
            'assets/images/ibar.png', // Path to your local image asset
            height: 22,
            width: 22,
          ),
          onPressed: () {
            // Add navigation logic for menu
          },
        ),

        IconButton(
          icon: Icon(Icons.help_outline, color: Color.fromARGB(255, 0, 0, 0)),
          onPressed: () {
            // Add navigation logic for help
          },
        ),
      ],
      iconTheme: IconThemeData(color: const Color.fromARGB(255, 0, 0, 0)),
      flexibleSpace: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 255, 255, 255).withOpacity(0.9),
              Color.fromARGB(255, 255, 255, 255).withOpacity(0.9),
            ],
            stops: [0.5, 1.0],
          ),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.1),
              spreadRadius: 7,
              blurRadius: 10,
              offset: Offset(0, 1),
            ),
          ],
        ),
      ),
    );
  }
}


