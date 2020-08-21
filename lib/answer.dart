import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:0.0),
      child: Container(
        width:200,
            child:OutlineButton(
               
               borderSide: BorderSide(
                 color: Theme.of(context).primaryColor,
                 style:BorderStyle.solid,
                 width:2,
               ) ,
               textColor: Theme.of(context).primaryColor ,
               child: Text(answerText),    //SHORT NOTE:functions as a pointer (without () at the end of function call)
                onPressed: selectHandler,  //we dont pass the result onPressed() beacuse it would be 
                                           //like giving a remote with the button pressed and would take control away.
                ),
        
      ),
    );
  }
}


