import 'package:flutter/material.dart';
import '../../app_bar.dart';

class bab3 extends StatelessWidget {
  final List<Map<String, dynamic>> data = [
    {
      'title': 'BAB III',
      'subtitle': 'KEKUASAAN PEMERINTAH NEGARA',
      'pasal': 'Pasal 4',
      'AI': true,
      'content': [
        "Presiden Republik Indonesia memegang kekuasaan pemerintahan menurut Undang- Undang Dasar.",
        "Dalam melakukan kewajibannya Presiden dibantu oleh satu orang Wakil Presiden.",
      ],
    },
    {
      'title': '',
      'subtitle': '',
      'pasal': 'Pasal 5',
      'AI': true,
      'content': [
        "Presiden memegang kekuasaan membentuk undang- undang dengan persetujuan Dewan Perwakilan Rakyat.",
        "Presiden menetapkan peraturan pemerintah untuk menjalankan undang-undang sebagaimana mestinya.",
      ],
    },
    {
      'title': '',
      'subtitle': '',
      'pasal': 'Pasal 6',
      'AI': true,
      'content': [
        "Presiden ialah orang Indonesia asli.",
        "Presiden dan Wakil Presiden dipilih oleh Majelis Permusyawaratan Rakyat dengan suara yang terbanyak.",
      ],
    },
    {
      'title': '',
      'subtitle': '',
      'pasal': 'Pasal 7',
      'AI': false,
      'content': [
        "Presiden dan Wakil Presiden memegang jabatannya selama masa lima tahun, dan sesudahnya dapat dipilih kembali.",
      ],
    },
    {
      'title': '',
      'subtitle': '',
      'pasal': 'Pasal 8',
      'AI': false,
      'content': [
        "Jika Presiden mangkat, berhenti, atau tidak dapat melakukan kewajibannya dalam masa jabatannya, ia diganti oleh Wakil Presiden sampai habis waktunya.",
      ],
    },
    {
      'title': '',
      'subtitle': '',
      'pasal': 'Pasal 9',
      'AI': false,
      'content': [
        'Sebelum memangku jabatannya, Presiden dan Wakil Presiden bersumpah menurut agama, atau berjanji dengan sungguh-sungguh di hadapan Majelis Permusyawaratan Rakyat atau Dewan Perwakilan Rakyat sebagai berikut: Sumpah Presiden (Wakil Presiden): "Demi Allah, saya bersumpah akan memenuhi kewajiban Presiden Republik Indonesia (Wakil Presiden Republik Indonesia) dengan sebaik-baiknya dan seadil-adilnya, memegang teguh Undang- Undang Dasar dan menjalankan segala undang-undang dan peraturannya dengan selurus-lurusnya serta berbakti kepada Nusa dan Bangsa."',
        '"Janji Presiden (Wakil Presiden): "Saya berjanji dengan sungguh-sungguh akan memenuhi kewajiban Presiden Republik Indonesia (Wakil Presiden Republik Indonesia) dengan sebaik-baiknya dan seadil-adilnya, memegang teguh Undang-Undang Dasar dan menjalankan segala undang-undang dan peraturannya dengan selurus lurusnya serta berbakti kepada Nusa dan Bangsa."',
      ],
    },
    {
      'title': '',
      'subtitle': '',
      'pasal': 'Pasal 10',
      'AI': false,
      'content': [
        'Presiden memegang kekuasaan yang tertinggi atas Angkatan Darat, Angkatan Laut, dan Angkatan Udara.',
      ],
    },
    {
      'title': '',
      'subtitle': '',
      'pasal': 'Pasal 11',
      'AI': false,
      'content': [
        'Presiden dengan persetujuan Dewan Perwakilan Rakyat menyatakan perang, membuat perdamaian dan perjanjian dengan negara lain.',
      ],
    },
    {
      'title': '',
      'subtitle': '',
      'pasal': 'Pasal 12',
      'AI': false,
      'content': [
        'Presiden menyatakan keadaan bahaya. Syarat-syarat dan akibatnya keadaan bahaya ditetapkan dengan undang-undang.',
      ],
    },
    {
      'title': '',
      'subtitle': '',
      'pasal': 'Pasal 13',
      'AI': true,
      'content': [
        'Presiden mengangkat duta dan konsul.',
        'Presiden menerima duta negara lain.',
      ],
    },
    {
      'title': '',
      'subtitle': '',
      'pasal': 'Pasal 14',
      'AI': false,
      'content': [
        'Presiden memberi grasi, amnesti, abolisi, dan rehabilitasi.',
      ],
    },
    {
      'title': '',
      'subtitle': '',
      'pasal': 'Pasal 15',
      'AI': false,
      'content': [
        'Presiden memberi gelaran, tanda jasa ,dan lain-lain tanda kehormatan.',
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
