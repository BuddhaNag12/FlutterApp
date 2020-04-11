 import 'package:flutter/material.dart';
 import './questions.dart';
 import './answer.dart';
 
  class  Quiz extends StatelessWidget {
    final List<Map<String,Object>> questions;
    final int questionIndex;
    final Function answerQuestion;
    Quiz({
      @required this.questions,
      @required this.answerQuestion,
      @required this.questionIndex
    });
    @override
    Widget build(BuildContext context) {
      return Column(
                  children: [
                    Questions(questions[questionIndex]['QuestionText']),
                    ...(questions[questionIndex]['answers'] as List<Map<String,Object>>)
                        .map((answers) {
                      return Answer(()=>answerQuestion(answers['score']), answers['text']);
                    }).toList()
                  ],
         );
    }
  }