import 'package:flutter/material.dart';
import '../../app_bar.dart';

class amandemen1_Page extends StatelessWidget {
  final List<Map<String, dynamic>> data = [
    {
      'title': 'BAB III',
      'tgl': '19 Oktober 1999',
      'subtitle': 'KEKUASAAN PEMERINTAHAN NEGARA',
      'pasal': 'Pasal 5',
      'AI': true,
      'content': [
        "Presiden berhak mengajukan rancangan undang-undang kepada Dewan Perwakilan Rakyat.",
      ],
    },
    {
      'title': '',
      'subtitle': '',
      'pasal': 'Pasal 7',
      'AI': true,
      'content': [
          {
            'text': 'Presiden dan Wakil Presiden memegang jabatan selama lima tahun, dan sesudahnya dapat dipilih kembali dalam jabatan yang sama, hanya untuk satu kali masa jabatan.',
          },
      ],
    },
    {
      'title': '',
      'subtitle': '',
      'pasal': 'Pasal 9',
      'AI': true,
      'content': [
          'Sebelum memangku jabatannya, Presiden dan Wakil Presiden bersumpah menurut agama, atau berjanji dengan sungguh-sungguh di hadapan Majelis Permusyawaratan Rakyat atau Dewan Perwakilan Rakyat sebagai berikut :',
          {
            'text': 'Sumpah Presiden (Wakil Presiden) : “Demi Allah, saya bersumpah akan memenuhi kewa-jiban Presiden Republik Indonesia (Wakil Presiden Republik Indonesia) dengan sebaik-baiknya dan seadil- adilnya, memegang teguh Undang-Undang Dasar dan menjalankan segala undang-undang dan peraturannya dengan selurus-lurusnya serta berbakti kepada Nusa dan Bangsa.”',
          },
          {
            'text': 'Janji Presiden (Wakil Presiden) : “Saya berjanji dengan sungguh-sungguh akan memenuhi kewajiban Presiden Republik Indonesia (Wakil Presiden Republik Indonesia) dengan sebaik-baiknya dan seadil-adilnya, memegang teguh Undang-Undang Dasar dan menjalankan segala undang-undang dan peraturannya dengan selurus-lurusnya serta berbakti kepada Nusa dan Bangsa”.',
          },
          'Jika Majelis Permusyawaratan Rakyat atau Dewan Perwakilan Rakyat tidak dapat mengadakan sidang, Presiden dan Wakil Presiden bersumpah menurut agama, atau berjanji dengan sungguh-sungguh di hadapan pimpinan Majelis Permusyawaratan Rakyat dengan disaksikan oleh Pimpinan Mahkamah Agung.'
        ],
    },
    {
      'title': '',
      'subtitle': '',
      'pasal': 'Pasal 13',
      'AI': true,
      'content': [
          'Presiden mengangkat duta dan konsul.',
          'Dalam hal mengangkat duta, Presiden memperhatikan pertimbangan Dewan Perwakilan Rakyat.',
          'Presiden menerima penempatan duta negara lain dengan memperhatikan pertimbangan Dewan Per-wakilan Rakyat.'
        ],
    },
    {
      'title': '',
      'subtitle': '',
      'pasal': 'Pasal 14',
      'AI': true,
      'content': [
          'Presiden memberi grasi dan rehabilitasi dengan memperhatikan pertimbangan Mahkamah Agung.',
          'Presiden memberi amnesti dan abolisi dengan memperhatikan pertimbangan Dewan Perwakilan Rakyat.'
        ],
    },
    {
      'title': '',
      'subtitle': '',
      'pasal': 'Pasal 15',
      'AI': true,
      'content': [
          {
            'text' : 'Presiden memberi gelar, tanda jasa, dan lain-lain tanda kehormatan yang diatur dengan undang-undang.'
          }
        ],
    },
    {
      'title': 'BAB V',
      'tgl': '19 Oktober 1999',
      'subtitle': 'KEMENTERIAN NEGARA',
      'pasal': 'Pasal 17',
      'AI': false,
      'content': [
        {
          'text' : 'Menteri-menteri itu diangkat dan diberhentikan oleh Presiden.',
          'NM' : '2'
        },
        {
          'text' : 'Setiap menteri membidangi urusan tertentu dalam pemerintahan.',
          'NM' : '3'
        }
      ],
    },
    {
      'title': 'BAB VII',
      'tgl': '19 Oktober 1999',
      'subtitle': 'DEWAN PERWAKILAN RAKYAT',
      'pasal': 'Pasal 20',
      'AI': true,
      'content': [
        'Dewan Perwakilan Rakyat memegang kekuasaan mem- bentuk undang-undang.',
        'Setiap rancangan undang-undang dibahas oleh Dewan Perwakilan Rakyat dan Presiden untuk mendapat perse- tujuan bersama.',
        'Jika rancangan undang-undang itu tidak mendapat per- setujuan bersama, rancangan undang-undang itu tidak boleh diajukan lagi dalam persidangan Dewan Perwakilan Rakyat masa itu.',
        'Presiden mengesahkan rancangan undang-undang yang telah disetujui bersama untuk menjadi undang-undang.',
      ],
    },
    {
      'title': '',
      'tgl': '',
      'subtitle': '',
      'pasal': 'Pasal 21',
      'AI': true,
      'content': [
        {
          'text' : 'Anggota Dewan Perwakilan Rakyat berhak mengajukan usul rancangan undang-undang.'
        }
      ],
    },
  ];

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar.buildAppBar(context, false, 'Amandemen I'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: data.map((item) => buildItem(context, item)).toList(),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildItem(BuildContext context, Map<String, dynamic> item) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ...buildTitleSubtitleDate(context, item),
        SizedBox(height: 5),
        Text(
          item['pasal'],
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10),
        if (item['AI'] == true) ...[
          buildContentList(context, item['content'])
        ] else ...[
          buildContentListWithManualIndex(context, item['content'])
        ],
        SizedBox(height: 10),
      ],
    );
  }

  List<Widget> buildTitleSubtitleDate(BuildContext context, Map<String, dynamic> item) {
    List<Widget> widgets = [];

    if (item['title'] != null && item['title'].isNotEmpty) {
      widgets.add(Text(
        item['title'], // Title
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ));
      widgets.add(SizedBox(height: 5));
    }

    if (item['subtitle'] != null && item['subtitle'].isNotEmpty) {
      widgets.add(Text(
        item['subtitle'], // Subtitle
        style: const TextStyle(
          fontSize: 16,
          fontStyle: FontStyle.italic,
        ),
        textAlign: TextAlign.center,
      ));
      widgets.add(SizedBox(height: 5));
    }

    if (item['tgl'] != null && item['tgl'].isNotEmpty) {
      widgets.add(Text(
        item['tgl'], // Date
        style: const TextStyle(
          fontSize: 14,
          fontStyle: FontStyle.italic,
        ),
        textAlign: TextAlign.center,
      ));
      widgets.add(SizedBox(height: 5));
    }

    return widgets;
  }

  Widget buildContentList(BuildContext context, List<dynamic> contentList) {
    int autoIndex = 0;
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: contentList.length,
      itemBuilder: (context, index) {
        var contentItem = contentList[index];
        if (contentItem is String) {
          autoIndex++;
          return buildContentRow(context, autoIndex, contentItem);
        } else {
          return Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 230, 210, 143),
              borderRadius: BorderRadius.circular(8.0),
            ),
            padding: const EdgeInsets.all(12.0),
            margin: const EdgeInsets.only(bottom: 12.0),
            child: Text(
              contentItem['text'],
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 14, fontFamily: 'Times New Roman'),
            ),
          );
        }
      },
    );
  }

  Widget buildContentListWithManualIndex(BuildContext context, List<dynamic> contentList) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: contentList.length,
      itemBuilder: (context, index) {
        var contentItem = contentList[index];
        if (contentItem is String) {
          return buildContentRow(context, index + 1, contentItem);
        } else {
          return buildContentRowManual(context, contentItem['NM'] ?? (index + 1).toString(), contentItem['text']);
        }
      },
    );
  }

  Widget buildContentRow(BuildContext context, int index, String content) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 230, 210, 143),
        borderRadius: BorderRadius.circular(8.0),
      ),
      padding: const EdgeInsets.all(12.0),
      margin: const EdgeInsets.only(bottom: 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$index.', // Display index number
            style: const TextStyle(fontSize: 16),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              content,
              textAlign: TextAlign.justify,
              style: const TextStyle(fontSize: 14, fontFamily: 'Times New Roman'),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildContentRowManual(BuildContext context, String index, String content) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 230, 210, 143),
        borderRadius: BorderRadius.circular(8.0),
      ),
      padding: const EdgeInsets.all(12.0),
      margin: const EdgeInsets.only(bottom: 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$index.', // Display index number
            style: const TextStyle(fontSize: 16),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              content,
              textAlign: TextAlign.justify,
              style: const TextStyle(fontSize: 14, fontFamily: 'Times New Roman'),
            ),
          ),
        ],
      ),
    );
  }
}

  Widget _buildContentList(List<dynamic> contentList) {
    int autoIndex = 0;
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: contentList.length,
      itemBuilder: (context, index) {
        var contentItem = contentList[index];
        if (contentItem is String) {
          autoIndex++;
          return _buildContentRow(autoIndex, contentItem);
        } else {
          return Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(88, 220, 163, 64),
              borderRadius: BorderRadius.circular(8.0),
            ),
            padding: EdgeInsets.all(12.0),
            margin: EdgeInsets.only(bottom: 12.0),
            child: Text(
              contentItem['text'],
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 14, fontFamily: 'Times New Roman', color: Colors.black),
            ),
          );
        }
      },
    );
  }

  Widget _buildContentRow(int index, String content) {
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
            '$index.', // Display index number
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
          SizedBox(width: 8),
          Expanded(
            child: Text(
              content,
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 14, fontFamily: 'Times New Roman', color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
