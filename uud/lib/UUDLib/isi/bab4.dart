import 'package:flutter/material.dart';
import '../../app_bar.dart';

class bab4 extends StatelessWidget {
  final List<Map<String, dynamic>> data = [
    {
      'title': 'BAB IV',
      'subtitle': 'DEWAN PERTIMBANGAN AGUNG',
      'pasal': 'Pasal 16',
      'AI': true,
      'content': [
        "Susunan Dewan Pertimbangan Agung ditetapkan dengan undang-undang.",
        "Dewan ini berkewajiban memberi jawab atas pertanyaan Presiden dan berhak memajukan usul kepada pemerintah.",
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
                      if (item['title'] != null && item['title'].isNotEmpty) // Check if title is not empty
                        Text(
                          item['title'], // Title
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      SizedBox(height: 5),
                      if (item['subtitle'] != null && item['subtitle'].isNotEmpty) // Check if subtitle is not empty
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
                              if (item['AI'] == true) // Check if auto-increment is enabled
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

                      SizedBox(height: 10), // Add spacing between categories
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
