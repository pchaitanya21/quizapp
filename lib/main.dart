//packages
import 'package:flutter/material.dart';

//Importing files 

import './quiz.dart';
import './result.dart';

void main()
{
  runApp(MyApp());

}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //imp variables that are updated

  var _qIndex=0;
  var _totalScore=0;
  final _questions= const[
      {
       'questionText':'Whats your favourite color',    //mapping 
        'answers':[{'text': 'red', 'score': 10},{ 'text':'blue', 'score':5},{'text':'green', 'score': 7}, {'text':'white', 'score':1}],
       },
       {'questionText':'Whats your favourite animal',
       'answers':[{'text':'rabbit', 'score':3}, {'text':'snake', 'score':8}, {'text':'doge', 'score':1}, {'text':'cate', 'score':5}],
       
       },
       {'questionText':'Whos your favourite booga',
       'answers':[{'text':'nooga', 'score':3}, {'text':'booga', 'score':10}, {'text':'pooga', 'score':7}, {'text':'ooga','score':3}],
       
       },


  ]; 


   void _resetQuiz() {
    setState(() {

    
    _qIndex=0;
    _totalScore=0;
  });
  }

  void _ansQuestion(int score){

    _totalScore=_totalScore + score;
    
    setState(() {
       _qIndex= _qIndex +1;   // Set state takes an anonymous function () where we put data of the ui which is updated inside it and calls build method and finds only stuff that changes
    });
    
   print(_qIndex);
    if (_qIndex<_questions.length){
      print('WE have more questions');   
    
    } else {
      print('No more questions');
    }
    }  



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
        accentColor: Colors.pink,
        fontFamily: 'Quicksand',
        textTheme: ThemeData.dark().textTheme.copyWith(
            title: TextStyle(
              fontFamily: 'Open Sans',
              fontSize: 18,
            ),
            button: TextStyle(color: Colors.white),
        ),
        appBarTheme: AppBarTheme(
          textTheme: ThemeData.dark().textTheme.copyWith(
               title: TextStyle(
                 fontFamily: 'OpenSans',
                 fontSize: 20,
               ),
          ),
        ),

      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true, // by default title is left aligned
          title: Text('Obscura'),
           ),
           body: _qIndex< _questions.length
             ? Quiz(
              answerQuestion: _ansQuestion,
              questionIndex: _qIndex,
              questions: _questions,
              )
              :Result(_totalScore, _resetQuiz),
     ),
      
    );
  }
}
