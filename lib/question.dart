import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';


class Question extends StatelessWidget {
  final String questionText; //never changes after intialization
  
  Question(this.questionText);//positional argument argument
  @override


  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:100.0),
      child: Container(
          color: Theme.of(context).accentColor,
          width:double.infinity,
          height: 200,
          child: Padding(
            padding: const EdgeInsets.only(top:70.0),
            child: Text(
            questionText, 
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),

            textAlign: TextAlign.center,
            ),
          ),
        ),
    );
    
    
  }
}


//we use anonymous functions () only if we need it at only one place ie. no func calling