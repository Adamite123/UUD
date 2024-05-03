import 'package:flutter/material.dart';
import 'app_bar.dart';

class SumpahpemudaPage extends StatelessWidget {
  final List<String> paragraphs = [
    // Add your paragraphs here
    "Kami poetra dan poetri Indonesia, mengakoe bertoempah darah jang satoe, tanah air Indonesia.",
    "Kami poetra dan poetri Indonesia mengakoe berbangsa jang satoe, bangsa Indonesia.",
    "Kami poetra dan poetri Indonesia mendjoendjoeng bahasa persatoean, bahasa Indonesia.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar.buildAppBar(context, false, 'Sumpah Pemuda'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
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
                            style: const TextStyle(fontSize: 14, fontFamily: 'Times New Roman', color: Colors.black),
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
      ),
    );
  }
}
