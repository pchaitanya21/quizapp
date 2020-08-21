import 'package:flutter/material.dart';


class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);
  String get resultPhrase{
    String resultText;
    if( resultScore <=8) {
      resultText= 'You are awesome and innocent';

    } else if(resultScore<=12) {
      resultText='Pretty likeable';
    } else if(resultScore <=16) {
      resultText='You are ... strange';

    }else {
      resultText='You big bad';
    }
    return resultText;
  } // resultText is a gettor arg that doesnt recieve parameters
  @override
  Widget build(BuildContext context) {
    return  Center(

            child:Container(
               color: Theme.of(context).accentColor,
               width:double.infinity,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(100.0),
                    child: Text(resultPhrase, style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),textAlign: TextAlign.center,
                    ),
                  ),
                  FlatButton(child: Text(
                    'Restart Quiz'
                    ), 
                    onPressed: resetHandler,
                     textColor: Colors.purple,
                  ),
                 
                ],
              ),
            ),
            );
    
  }
}