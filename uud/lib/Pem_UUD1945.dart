import 'package:flutter/material.dart';
import 'app_bar.dart';

class PembukaanUUDPage extends StatelessWidget {
  final List<String> paragraphs = [
    // Add your paragraphs here
    "Bahwa sesungguhnya kemerdekaan itu ialah hak segala bangsa dan oleh sebab itu, maka penjajahan diatas dunia harus dihapuskan, karena tidak sesuai dengan perikemanusiaan dan perikeadilan.",
    "Dan perjuangan pergerakan kemerdekaan Indonesia telah sampailah kepada saat yang berbahagia dengan selamat sentosa mengantarkan rakyat Indonesia ke depan pintu gerbang kemerdekaan negara Indonesia, yang merdeka, bersatu, berdaulat, adil dan makmur.",
    "Atas berkat rahmat Allah Yang Maha Kuasa dan dengan didorongkan oleh keinginan luhur, supaya berkehidupan kebangsaan yang bebas, maka rakyat Indonesia menyatakan dengan ini kemerdekaannya.",
    "Kemudian daripada itu untuk membentuk suatu Pemerintah Negara Indonesia yang melindungi segenap bangsa Indonesia dan seluruh tumpah darah Indonesia dan untuk memajukan kesejahteraan umum, mencerdaskan kehidupan bangsa, dan ikut melaksanakan ketertiban dunia yang berdasarkan kemerdekaan, perdamaian abadi dan keadilan sosial, maka disusunlah Kemerdekaan Kebangsaan Indonesia itu dalam suatu Undang-Undang Dasar Negara Indonesia, yang terbentuk dalam suatu susunan Negara Republik Indonesia yang berkedaulatan rakyat dengan berdasar kepada : Ketuhanan Yang Maha Esa, kemanusiaan yang adil dan beradab, persatuan Indonesia, dan kerakyatan yang dipimpin oleh hikmat kebijaksanaan dalam permusyawaratan/perwakilan, serta dengan mewujudkan suatu keadilan sosial bagi seluruh rakyat Indonesia.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar.buildAppBar(context, false, 'Pembukaan UUD 1945'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5), // Add some spacing after divider
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(), // Disable scrolling for the inner ListView
                    shrinkWrap: true, // Allow the ListView to scroll within the column
                    itemCount: paragraphs.length,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(88, 220, 163, 64), // Set the background color of the container with some opacity
                          borderRadius: BorderRadius.circular(8.0), // Optional: add border radius for rounded corners
                        ),
                        padding: EdgeInsets.all(12.0), // Optional: add padding for the container
                        margin: EdgeInsets.only(bottom: 12.0), // Optional: add margin between containers
                        child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.format_quote,
                          size: 20,
                          color: Colors.black,
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            paragraphs[index],
                            textAlign: TextAlign.justify,
                            style: const TextStyle(fontSize: 13.5, fontFamily: 'Times New Roman', color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
