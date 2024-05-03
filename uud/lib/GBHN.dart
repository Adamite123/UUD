import 'package:flutter/material.dart';
import 'package:uud/GBHN/BAB1.dart';
import 'package:uud/GBHN/BAB2.dart';
import 'package:uud/GBHN/BAB3.dart';
import 'package:uud/GBHN/BAB4.dart';
import 'package:uud/GBHN/BAB5.dart';
import 'app_bar.dart';

class GBHNPage extends StatelessWidget {
  final List<String> sections = [
    'BAB I PENDAHULUAN',
    'BAB II KONDISI UMUM',
    'BAB III VISI DAN MISI',
    'BAB IV ARAH KEBIJAKAN',
    'BAB V KAIDAH PELAKSANAAN',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar.buildAppBar(context, false, 'Garis Besar Haluan Negara'),
      body: Container(
        color: Colors.grey[200], // Set background color
        child: ListView.builder(
          itemCount: sections.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0), // Add padding
              child: GestureDetector(
                onTap: () {
                  _handleCardTap(context, index); // Call _handleCardTap function on tap
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: ListTile(
                    leading: const Icon(
                      Icons.format_list_bulleted_rounded, // Add right arrow icon
                      color: Colors.blue, // Set icon color
                    ),
                    title: Text(
                      sections[index],
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    trailing: const Icon(
                      Icons.navigate_next, // Add right arrow icon
                      color: Colors.blue, // Set icon color
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void _handleCardTap(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Bab1_Page()),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Bab2_Page()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Bab3_Page()),
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Bab4_Page()),
        );
        break;
      case 4:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Bab5_Page()),
        );
        break;

      default:
        break;
    }
  }
}


void main() {
  runApp(MaterialApp(
    home: GBHNPage(),
  ));
}
