import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return myappstate();
  }
}

class myappstate extends State<myapp> {
  static const questions = [
    {
      'QuestionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ]
    },
    {
      'QuestionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9}
      ]
    },
  ];
  var questionIndex = 0;
  var totalScore=0;
  void ResetQuiz(){
    setState(() {
     questionIndex=0;
    totalScore=0;
    });
    
  }
  void _answerQuestion(int score) {
    totalScore+=score;
    setState(() {
      questionIndex += 1;
    });
    if (questionIndex < questions.length) {}
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('first App'),
          ),
          body: questionIndex < questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: questionIndex,
                  questions: questions,
                )
              : Result(totalScore,ResetQuiz)
              ),
    );
  }
}
