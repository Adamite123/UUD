import 'package:flutter/material.dart';
import 'package:uud/UUDLib/Terbaru.dart';
import 'package:uud/UUDLib/amandemen1.dart';
import 'package:uud/UUDLib/amandemen2.dart';
import 'package:uud/UUDLib/amandemen3.dart';
import 'package:uud/UUDLib/amandemen4.dart';
import 'package:uud/UUDLib/naskah_asli.dart';
import 'app_bar.dart';

class MyData {
  final String title;
  final String description;
  final String date;
  final String imagePath;

  MyData({
    required this.title,
    required this.description,
    required this.date,
    required this.imagePath,
  });
}

class MyListView extends StatelessWidget {
  final List<MyData> dataList = [
    MyData(
      title: 'NASKAH ASLI',
      description: 'Sebelum Amandemen',
      date: '18 Agustus 1945',
      imagePath: 'assets/images/uudlog.png',
    ),
    MyData(
      title: 'AMANDEMEN I',
      description: 'Perubahan pada beberapa Pasal',
      date: '19 October 1999',
      imagePath: 'assets/images/uudlog.png',
    ),
    MyData(
      title: 'AMANDEMEN II',
      description: 'Perubahan pada beberapa Pasal',
      date: '18 Agustus 2000',
      imagePath: 'assets/images/uudlog.png',
    ),
    MyData(
      title: 'AMANDEMEN III',
      description: 'Perubahan pada beberapa Pasal',
      date: '10 November 2001',
      imagePath: 'assets/images/uudlog.png',
    ),
    MyData(
      title: 'AMANDEMEN IV',
      description: 'Perubahan pada beberapa Pasal',
      date: '10 Agustus 2002',
      imagePath: 'assets/images/uudlog.png',
    ),
    MyData(
      title: 'UUD 1945 Terbaru',
      description: 'Setelah Amandemen I, II, III dan IV',
      date: '10 Agustus 2002',
      imagePath: 'assets/images/uudlog.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar.buildAppBar(context, false, 'UUD 1945 Library'),
      body: Padding(
        padding: const EdgeInsets.only(top: 16.0), // Add padding to create space
        child: ListView.builder(
          itemCount: dataList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                _handleCardTap(context, index); // Call a function to handle tap based on index
              },
              child: Card(
                elevation: 4,
                margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 150,
                        height: 100,
                        child: Image.asset(
                          dataList[index].imagePath,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            dataList[index].title,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            dataList[index].description,
                            style: const TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            '${dataList[index].date}',
                            style: const TextStyle(
                              fontSize: 12,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                    ],
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
    // Define different actions for each card based on its index
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => naskah_asli_Page()),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => amandemen1_Page()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => amandemen2_Page()),
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => amandemen3_Page()),
        );
        break;
      case 4:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => amandemen4_Page()),
        );
        break;
      case 5:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => UUDTerbaru_Page()),
        );
        break;
      default:
        break;
    }
  }
}

void main() {
  runApp(MaterialApp(
    home: MyListView(),
  ));
}
