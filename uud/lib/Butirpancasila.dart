import 'package:flutter/material.dart';
import 'app_bar.dart';

class ButirpancasilaPage extends StatelessWidget {
  final List<List<String>> categories = [
    // Define your categories and paragraphs here
    [
      // Category: Maha Esa
      "Bangsa Indonesia menyatakan kepercayaannya dan ketaqwaannya terhadap Tuhan Yang Maha Esa.",
      "Manusia Indonesia percaya dan taqwa terhadap Tuhan Yang Maha Esa, sesuai dengan agama dan kepercayaannya masing-masing menurut dasar kemanusiaan yang adil dan beradab.",
      "Mengembangkan sikap hormat menghormati dan bekerjasama antara pemeluk agama dengan penganut kepercayaan yang berbeda-beda terhadap Tuhan Yang Maha Esa.",
      "Membina kerukunan hidup di antara sesama umat beragama dan kepercayaan terhadap Tuhan Yang Maha Esa.",
      "Agama dan kepercayaan terhadap Tuhan Yang Maha Esa adalah masalah yang menyangkut hubungan pribadi manusia dengan Tuhan Yang Maha Esa.",
      "Mengembangkan sikap saling menghormati kebebasan menjalankan ibadah sesuai dengan agama dan kepercayaannya masing-masing.",
      "Tidak memaksakan suatu agama dan kepercayaan terhadap Tuhan Yang Maha Esa kepada orang lain."
    ],
    [
      // Category: Kemanusiaan
      "Mengakui dan memperlakukan manusia sesuai dengan harkat dan martabatnya sebagai makhluk Tuhan Yang Maha Esa.",
      "Mengakui persamaan derajad, persamaan hak dan kewajiban asasi setiap manusia, tanpa membeda-bedakan suku, keturrunan, agama, kepercayaan, jenis kelamin, kedudukan sosial, warna kulit dan sebagainya.",
      "Mengembangkan sikap saling mencintai sesama manusia.",
      "Mengembangkan sikap saling tenggang rasa dan tepa selira. ",
      "Mengembangkan sikap tidak semena-mena terhadap orang lain. ",
      "Menjunjung tinggi nilai-nilai kemanusiaan.",
      "Gemar melakukan kegiatan kemanusiaan.",
      "Berani membela kebenaran dan keadilan.",
      "Bangsa Indonesia merasa dirinya sebagai bagian dari seluruh umat manusia.",
      "Mengembangkan sikap hormat menghormati dan bekerjasama dengan bangsa lain.",
    ],
    [
      // Category: Persatuan
      "Mampu menempatkan persatuan, kesatuan, serta kepentingan dan keselamatan bangsa dan negara sebagai kepentingan bersama di atas kepentingan pribadi dan golongan.",
      "Sanggup dan rela berkorban untuk kepentingan negara dan bangsa apabila diperlukan.",
      "Mengembangkan rasa cinta kepada tanah air dan bangsa.",
      "Mengembangkan rasa kebanggaan berkebangsaan dan bertanah air Indonesia.",
      "Memelihara ketertiban dunia yang berdasarkan kemerdekaan, perdamaian abadi dan keadilan sosial.",
      "Mengembangkan persatuan Indonesia atas dasar Bhinneka Tunggal Ika. ",
      "Memajukan pergaulan demi persatuan dan kesatuan bangsa.",
    ],
    [
      // Category: Kerakyatan
      "Sebagai warga negara dan warga masyarakat, setiap manusia Indonesia mempunyai kedudukan, hak dan kewajiban yang sama.",
      "Tidak boleh memaksakan kehendak kepada orang lain.",
      "Mengutamakan musyawarah dalam mengambil keputusan untuk kepentingan bersama.",
      "Musyawarah untuk mencapai mufakat diliputi oleh semangat kekeluargaan.",
      "Menghormati dan menjunjung tinggi setiap keputusan yang dicapai sebagai hasil musyawarah.",
      "Dengan i’tikad baik dan rasa tanggung jawab menerima dan melaksanakan hasil keputusan musyawarah.",
      "Di dalam musyawarah diutamakan kepentingan bersama di atas kepentingan pribadi dan golongan.",
      "Musyawarah dilakukan dengan akal sehat dan sesuai dengan hati nurani yang luhur.",
      "Keputusan yang diambil harus dapat dipertanggungjawabkan secara moral kepada Tuhan Yang Maha Esa, menjunjung tinggi harkat dan martabat manusia, nilai-nilai kebenaran dan keadilan mengutamakan persatuan dan kesatuan demi kepentingan bersama.",
      "Memberikan kepercayaan kepada wakil-wakil yang dipercayai untuk melaksanakan pemusyawaratan.",
    ],
    [
      // Category: Keadilan Sosial
      "Mengembangkan perbuatan yang luhur, yang mencerminkan sikap dan suasana kekeluargaan dan kegotongroyongan.",
      "Mengembangkan sikap adil terhadap sesama.",
      "Menjaga keseimbangan antara hak dan kewajiban.",
      "Menghormati hak orang lain.",
      "Suka memberi pertolongan kepada orang lain agar dapat berdiri sendiri.",
      "Tidak menggunakan hak milik untuk usaha-usaha yang bersifat pemerasan terhadap orang lain.",
      "Tidak menggunakan hak milik untuk hal-hal yang bersifat pemborosan dan gaya hidup mewah.",
      "Tidak menggunakan hak milik untuk bertentangan dengan atau merugikan kepentingan umum.",
      "Suka bekerja keras.",
      "Suka menghargai hasil karya orang lain yang bermanfaat bagi kemajuan dan kesejahteraan bersama.",
      "Suka melakukan kegiatan dalam rangka mewujudkan kemajuan yang merata dan berkeadilan sosial.",
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar.buildAppBar(context, false, '45 Butir - Butir Pancasila'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (var category in categories)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      getCategoryTitle(categories.indexOf(category)),
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: category.length,
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
                                  category[index],
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
    );
  }

  String getCategoryTitle(int index) {
    switch (index) {
      case 0:
        return 'I. KETUHANAN YANG MAHA ESA';
      case 1:
        return 'II. KEMANUSIAAN YANG ADIL DAN BERADAB';
      case 2:
        return 'III. PERSATUAN INDONESIA';
      case 3:
        return 'IV. KERAKYATAN YANG DIPIMPIN OLEH HIKMAT KEBIJAKSANAAN DALAM PERMUSYAWARATAN PERWAKILAN';
      case 4:
        return 'V. KEADILAN SOSIAL BAGI SELURUH RAKYAT INDONESIA';
      default:
        return '';
    }
  }
}
