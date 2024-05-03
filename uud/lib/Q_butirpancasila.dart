import 'package:flutter/material.dart';
import 'app_bar.dart';

class QButir extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar.buildAppBar(context, false, 'Quiz Butir Pancasila'),
      body: Center(
        child: SingleChildScrollView( // Wrap the column in SingleChildScrollView
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonRow(
                difficulty: 'Easy',
                note: 'Sila I & II',
                onPressed: () {
                  // Navigate to the quiz page with hard difficulty
                },
              ),
              ButtonRow(
                difficulty: 'Medium',
                note: 'Sila III, IV & V',
                onPressed: () {
                  // Navigate to the quiz page with hard difficulty
                },
              ),
              ButtonRow(
                difficulty: 'Hard',
                note: 'Sila I, II, III, IV, & V',
                onPressed: () {
                  // Navigate to the quiz page with hard difficulty
                },
              ),

            SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonRow extends StatelessWidget {
  final String difficulty;
  final String note;
  final VoidCallback onPressed;

  const ButtonRow({
    required this.difficulty,
    required this.note,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,  // 80% of the screen
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 218, 21, 7).withOpacity(0.9), // Red color
                Color.fromARGB(255, 228, 70, 17).withOpacity(0.9), // Adjusted color
              ],
              // stops: [0.0, 0.0],
            ),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 113, 22, 12).withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: MaterialButton(
            onPressed: onPressed,
            padding: EdgeInsets.symmetric(vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                Text(
                  difficulty,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  note,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

  }
}
