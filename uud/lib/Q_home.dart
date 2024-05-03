import 'package:flutter/material.dart';
import 'package:uud/Q_butirpancasila.dart';
import 'app_bar.dart';
import 'package:uud/Q_page.dart';

class QHome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar.buildAppBar(context, false, 'Quiz challenge'),
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10, // Spacing between rows
        crossAxisSpacing: 10, // Spacing between columns
        padding: EdgeInsets.all(16),
        children: [
          RoundedMenuButton(
            icon: Icons.quiz_sharp,
            label: 'UUD 1945',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QuizHomePage()),
              );
            },
          ),
          RoundedMenuButton(
            icon: Icons.quiz_sharp,
            label: '45 Butir Pancasila',
            onPressed: () {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => QButir()),
              );
            },
          ),
        ],
      ),
    );   
  }
}

class RoundedMenuButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  const RoundedMenuButton({
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(255, 25, 65, 113).withOpacity(0.8),
            Color.fromARGB(255, 17, 145, 242).withOpacity(0.9),
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.3),
            spreadRadius: 3,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),

      child: MaterialButton(
        onPressed: onPressed,
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 32, color: const Color.fromARGB(255, 255, 255, 255)),
            SizedBox(height: 8),
            Text(
              label,
              style: TextStyle(fontSize: 20, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),

    ),
  );
}
}

