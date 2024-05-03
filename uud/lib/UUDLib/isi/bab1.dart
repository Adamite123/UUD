import 'package:flutter/material.dart';
import '../../app_bar.dart';

class bab1 extends StatelessWidget {
  final List<Map<String, dynamic>> data = [
    {
      'title': 'BAB I',
      'subtitle': 'BENTUK DAN KEDAULATAN',
      'pasal': 'Pasal 1',
      'content': [
        "Negara Indonesia ialah Negara kesatuan yang berbentuk Republik.",
        "Kedaulatan adalah di tangan rakyat, dan dilakukan sepenuhnya oleh Majelis Permusyawaratan Rakyat.",
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar.buildAppBar(context, false, 'Naskah Asli UUD 1945'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Center( // Wrap with Center widget
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center, // Align center horizontally
              children: [
                for (var item in data)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center, // Align center horizontally
                    children: [
                      Text(
                        item['title'], // Title
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 5),
                      Text(
                        item['subtitle'], // Subtitle
                        style: const TextStyle(
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 5),
                      Text(
                        item['pasal'], // Pasal
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 10),
                      ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: item['content'].length,
                        itemBuilder: (context, index) {
                          return Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(88, 220, 163, 64),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            padding: EdgeInsets.all(12.0),
                            margin: EdgeInsets.only(bottom: 12.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${index + 1}.', // Display index number
                                  style: const TextStyle(
                                    fontSize: 16,
                                    // fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    item['content'][index],
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(fontSize: 14, fontFamily: 'Times New Roman', color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                      SizedBox(height: 20), // Add spacing between categories
                    ],
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
