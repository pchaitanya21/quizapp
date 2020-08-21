import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;


  Quiz({ @required this.questions, 
         @required this.answerQuestion,
         @required this.questionIndex
  });
  @override
  Widget build(BuildContext context) {
    return Column(
              children: [
                Question(
                questions[questionIndex]['questionText'],
              ),
              ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)   
                 .map((answer) {
                return Answer(()=>answerQuestion(answer['score']), answer['text']);   
              }).toList()
          
          //map returns a new list of widgets by toList 
          // as a list tells dart that answer is of type list    
          //... spread operator takes  a list and takes its values and sends to another list    
            ],
          );
      

  }
}
