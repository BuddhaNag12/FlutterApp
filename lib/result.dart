import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultscore;
  final Function resetHandle;
  Result(this.resultscore,this.resetHandle);
  String get resultPhrase{
    var resultText="You did it";
    if(resultscore<=8)
    {
       resultText="You are Awesome and innocent";
    }else if(resultscore<=12){
        resultText="Pretty Likable";
    }
    else if(resultscore<=16){
    resultText="Unliked to everyone";
    }else{
   resultText="Strange!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
           resultPhrase,
           style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),
           textAlign: TextAlign.center,
          ),
          FlatButton(child: Text('Reset Quiz!'),onPressed:resetHandle,
          textColor: Colors.red,
          )
        ],
      ),
    );
  }
}