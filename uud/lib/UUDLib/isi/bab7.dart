import 'package:flutter/material.dart';
import '../../app_bar.dart';

class bab7 extends StatelessWidget {
  final List<Map<String, dynamic>> data = [
    {
      'title': 'BAB VII',
      'subtitle': 'DEWAN PERWAKILAN RAKYAT',
      'pasal': 'Pasal 19',
      'AI': true,
      'content': [
        "Susunan Dewan Perwakilan Rakyat ditetapkan dengan undang-undang.",
        "Dewan Perwakilan Rakyat bersidang sedikitnya sekali dalam setahun."
      ],
    },
    {
      'title': '',
      'subtitle': '',
      'pasal': 'Pasal 20',
      'AI': true,
      'content': [
        "Tiap-tiap undang-undang menghendaki persetujuan Dewan Perwakilan Rakyat.",
        "Jika sesuatu rancangan undang-undang tidak mendapat persetujuan Dewan Perwakilan Rakyat, maka rancangan tadi tidak boleh dimajukan lagi dalam persidangan Dewan Perwakilan Rakyat masa itu."
      ],
    },
    {
      'title': '',
      'subtitle': '',
      'pasal': 'Pasal 21',
      'AI': true,
      'content': [
        "Anggota-anggota Dewan Perwakilan Rakyat berhak memajukan rancangan undang- undang.",
        "Jika rancangan itu, meskipun disetujui oleh Dewan Perwakilan Rakyat, tidak disyahkan oleh Presiden, maka rancangan tadi tidak boleh dimajukan lagi dalam persidangan Dewan Perwakilan Rakyat masa itu."
      ],
    },
    {
      'title': '',
      'subtitle': '',
      'pasal': 'Pasal 22',
      'AI': true,
      'content': [
        "Dalam hal ihwal kegentingan yang memaksa, Presiden berhak menetapkan peraturan pemerintah pengganti undang-undang.",
        "Peraturan pemerintah itu harus mendapat persetujuan Dewan Perwakilan Rakyat dalam persidangan yang berikut.",
        "Jika tidak mendapat persetujuan, maka peraturan pemerintah itu harus dicabut."
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
