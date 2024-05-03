import 'dart:async';
import 'package:flutter/material.dart';
import 'app_bar.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  final List<Map<String, dynamic>> quizData = [
    {
      'question': 'What is the capital of France?',
      'answers': ['Paris', 'London', 'Berlin', 'Madrid'],
      'correctAnswer': 'Paris',
    },
    {
      'question': 'Who wrote "Romeo and Juliet"?',
      'answers': ['Charles Dickens', 'William Shakespeare', 'Mark Twain', 'Jane Austen'],
      'correctAnswer': 'William Shakespeare',
    },
    // Add more questions here
  ];

  int currentQuestionIndex = 0;
  List<String> selectedAnswers = [];
  int _remainingSeconds = 20;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void answerQuestion(String answer) {
    setState(() {
      selectedAnswers.add(answer);
      _timer?.cancel(); // Cancel the previous timer
      if (currentQuestionIndex < quizData.length - 1) {
        currentQuestionIndex++;
        _remainingSeconds = 20; // Reset remaining time for the next question
        startTimer(); // Start timer for the next question
      } else {
        // All questions answered, show results
        showResults();
      }
    });
  }

  void startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (Timer timer) {
      setState(() {
        if (_remainingSeconds > 0) {
          _remainingSeconds--;
        } else {
          timer.cancel();
          answerQuestion(''); // Proceed to the next question automatically
        }
      });
    });
  }



  void showResults() {
    // Calculate quiz score
    int correctAnswersCount = 0;
    for (int i = 0; i < quizData.length; i++) {
      if (selectedAnswers[i] == quizData[i]['correctAnswer']) {
        correctAnswersCount++;
      }
    }
    // Show quiz results
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Quiz Results'),
          content: Text('You scored $correctAnswersCount out of ${quizData.length}'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close Dialog
                Navigator.of(context).pop(); // Navigate back to the previous screen (quiz screen)
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar.buildAppBar(context, false, 'Quiz Start!'),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LinearProgressIndicator(
              value: _remainingSeconds / 20, // Calculate progress value
              minHeight: 10,
              backgroundColor: Colors.grey,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue), // Progress color
            ),
            SizedBox(height: 16),
            Text(
              'Question ${currentQuestionIndex + 1}/${quizData.length}:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              quizData[currentQuestionIndex]['question'],
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            // Display answer options
            ...(quizData[currentQuestionIndex]['answers'] as List<String>).map((answer) {
              return InkWell(
                onTap: () => answerQuestion(answer),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    answer,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
