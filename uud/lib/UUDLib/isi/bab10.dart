import 'package:flutter/material.dart';
import '../../app_bar.dart';

class bab10 extends StatelessWidget {
  final List<Map<String, dynamic>> data = [
    {
      'title': 'BAB X',
      'subtitle': 'WARGA NEGARA',
      'pasal': 'Pasal 26',
      'AI': true,
      'content': [
        "Yang menjadi warga negara ialah orang-orang bangsa Indonesia asli dan orang-orang bangsa lain yang disahkan dengan undang-undang sebagai warga negara.",
        "Syarat-syarat yang mengenai kewarganegaraan ditetapkan dengan undang-undang."
      ],
    },
    {
      'title': '',
      'subtitle': '',
      'pasal': 'Pasal 27',
      'AI': true,
      'content': [
        "Segala warga negara bersamaan kedudukannya dalam hukum dan pemerintahan dan wajib menjunjung hukum dan pemerintahan itu dengan tidak ada kecualinya.",
        "Tiap-tiap warga negara berhak atas pekerjaan dan penghidupan yang layak bagi kemanusiaan."
      ],
    },
    {
      'title': '',
      'subtitle': '',
      'pasal': 'Pasal 28',
      'AI': false,
      'content': [
        "Kemerdekaan berserikat dan berkumpul, mengeluarkan pikiran dengan lisan dan tulisan dan sebagainya ditetapkan dengan undang-undang."
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
