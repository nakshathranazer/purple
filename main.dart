import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';
void main() {
   runApp(MyApp());
}

class MyApp extends StatefulWidget {
  

  @override
  State<StatefulWidget> createState() {
    
    return MyAppState();
  }
      
          
}   


      
class MyAppState extends State<MyApp> {
  
   final questions= const [
   
         
      {
        'questionText':'Whats your favourite colour?',
        'answers':[{'text':'Black','score':10},{'text':'Red','score':5},{'text':'Green','score':3},{'text':'White','score':1},
        ],
        
      },
       {
        'questionText':'Whats your favourite animal?',
        'answers':[{'text':'Rabbit','score':3},{'text':'Snake','score':11},{'text':'Elephant','score':5},{'text':'Lion','score':9},
        ],
       },
        
      {
        'questionText':'Whos ur your favourite teacher?',
        'answers':[{'text':'Max','score':1},{'text':'Max','score':1},{'text':'Max','score':1},{'text':'Max','score':1},
        ],
        
      },
   
       ];
  var questionIndex=0;
  var totalScore=0;

  

  

  void resetQuiz(){
         setState(() {
           questionIndex=0;
           totalScore=0;

         });
                    
       }


 

  
  void answerQuestion(int score){
         totalScore+=score;

         setState((){
           questionIndex=questionIndex +1;

         });
         print(questionIndex);
         if(questionIndex<questions.length){
           print('we have more Questions');
         }else{
           print("No more Questions");
         }
       }

 
  
   
       


  @override
  Widget build(BuildContext context )  {
   return MaterialApp(
      home:Scaffold(
        appBar:AppBar(
          title:Text('My First App'),

          ),
        body:questionIndex<questions.length
        ? Quiz(
          answerQuestion:answerQuestion,
          questionIndex:questionIndex,
          questions:questions,
        )
        :Result(totalScore,resetQuiz),
      ),
    );
  }     
          

          
  

}