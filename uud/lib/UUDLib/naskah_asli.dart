import 'package:flutter/material.dart';
import 'package:uud/UUDLib/isi/bab1.dart';
import 'package:uud/UUDLib/isi/bab10.dart';
import 'package:uud/UUDLib/isi/bab11.dart';
import 'package:uud/UUDLib/isi/bab12.dart';
import 'package:uud/UUDLib/isi/bab13.dart';
import 'package:uud/UUDLib/isi/bab14.dart';
import 'package:uud/UUDLib/isi/bab15.dart';
import 'package:uud/UUDLib/isi/bab16.dart';
import 'package:uud/UUDLib/isi/bab2.dart';
import 'package:uud/UUDLib/isi/bab3.dart';
import 'package:uud/UUDLib/isi/bab4.dart';
import 'package:uud/UUDLib/isi/bab5.dart';
import 'package:uud/UUDLib/isi/bab6.dart';
import 'package:uud/UUDLib/isi/bab7.dart';
import 'package:uud/UUDLib/isi/bab8.dart';
import 'package:uud/UUDLib/isi/bab9.dart';
import '../app_bar.dart';

class naskah_asli_Page extends StatelessWidget {
  final List<Map<String, dynamic>> data = [
    {
      'title': 'BAB I',
      'subtitle': 'BENTUK DAN KEDAULATAN',
    },
    {
      'title': 'BAB II',
      'subtitle': 'MAJELIS PERMUSYAWARATAN RAKYAT',
    },
    {
      'title': 'BAB III',
      'subtitle': 'KEKUASAAN PEMERINTAHAN NEGARA',
    },
    {
      'title': 'BAB IV',
      'subtitle': 'DEWAN PERTIMBANGAN AGUNG',
    },
    {
      'title': 'BAB V',
      'subtitle': 'KEMENTERIAN NEGARA',
    },
    {
      'title': 'BAB VI',
      'subtitle': 'PEMERINTAHAN DAERAH',
    },
    {
      'title': 'BAB VII',
      'subtitle': 'DEWAN PERWAKILAN RAKYAT',
    },
    {
      'title': 'BAB VIII',
      'subtitle': 'HAL KEUANGAN',
    },
    {
      'title': 'BAB IX',
      'subtitle': 'KEKUASAAN KEHAKIMAN',
    },
    {
      'title': 'BAB X',
      'subtitle': 'WARGA NEGARA',
    },
    {
      'title': 'BAB XI',
      'subtitle': 'AGAMA',
    },
    {
      'title': 'BAB XII',
      'subtitle': 'PERTAHANAN NEGARA',
    },
    {
      'title': 'BAB XIII',
      'subtitle': 'PENDIDIKAN',
    },
    {
      'title': 'BAB XIV',
      'subtitle': 'KESEJAHTERAAN SOSIAL',
    },
    {
      'title': 'BAB XV',
      'subtitle': 'BENDERA DAN BAHASA',
    },
    {
      'title': 'BAB XVI',
      'subtitle': 'PERUBAHAN UNDANG-UNDANG DASAR',
    },
    
  ];

  final List<Color> colors = [
    Color.fromARGB(255, 2, 208, 223),
    Color.fromARGB(255, 0, 227, 159), 
    Color.fromARGB(255, 251, 227, 15),
    Colors.orange, 
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar.buildAppBar(context, false, 'Naskah Asli UUD 1945'),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          final colorIndex = index ~/ 4; // Determine color index
          final color = colors[colorIndex % colors.length]; // Get color from the list

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                _handleCardTap(context, index); // Call a function to handle tap based on index
              },
              child: Card(
                elevation: 4,
                color: color, // Set color based on index
                child: ListTile(
                  title: Text(
                    data[index]['title'],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(data[index]['subtitle']),
                  trailing: const Icon(
                    Icons.navigate_next, // Add right arrow icon
                    color: Color.fromARGB(255, 0, 0, 0), // Set icon color
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void _handleCardTap(BuildContext context, int index) {
    // Define different actions for each card based on its index
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => bab1()), // Navigate to the specified page for BAB I
        );
        break;
      
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => bab2()), // Navigate to the specified page for BAB I
        );
        break;

      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => bab3()), // Navigate to the specified page for BAB I
        );
        break;

      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => bab4()), // Navigate to the specified page for BAB I
        );
        break;

      case 4:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => bab5()), // Navigate to the specified page for BAB I
        );
        break;

      case 5:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => bab6()), // Navigate to the specified page for BAB I
        );
        break;

      case 6:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => bab7()), // Navigate to the specified page for BAB I
        );
        break;

      case 7:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => bab8()), // Navigate to the specified page for BAB I
        );
        break;

      case 8:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => bab9()), // Navigate to the specified page for BAB I
        );
        break;

      case 9:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => bab10()), // Navigate to the specified page for BAB I
        );
        break;

      case 10:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => bab11()), // Navigate to the specified page for BAB I
        );
        break;

      case 11:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => bab12()), // Navigate to the specified page for BAB I
        );
        break;

      case 12:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => bab13()), // Navigate to the specified page for BAB I
        );
        break;

      case 13:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => bab14()), // Navigate to the specified page for BAB I
        );
        break;

      case 14:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => bab15()), // Navigate to the specified page for BAB I
        );
        break;

      case 15:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => bab16()), // Navigate to the specified page for BAB I
        );
        break;

      default:
        break;
    }
  }
}
