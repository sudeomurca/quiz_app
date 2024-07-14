import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

//BURADA Quiz classı bir ağaçsa QuestionsScreen ve StartScreen dallardır.
class Quiz extends StatefulWidget{
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }

}
//private class yukardaki classa bağlanır
class _QuizState extends State<Quiz>{
  final List <String> selectedAnswers=[];
var activeScreen='start-screen';//herhangi değişken değeri int de olabilirdi

void switchScreen(){
  setState(()  {
    activeScreen= 'questions-screen';
  });
}

void chooseAnswer(String answer){
  selectedAnswers.add(answer);
}
  
  
//setState sayesinde uygulama kullanırken değişiklik yapınca yani bu fonksiyonu buton ile çalıştırınca
//ekran değişecek çünkü setState değişiklik algılayacak 



  @override
  Widget build(context){
     
     Widget screenWidget=StartScreen(switchScreen);
     if(activeScreen== 'questions-screen')
     {
      screenWidget= QuestionsScreen(
        onSelectAnswer:chooseAnswer,);
     }
     

    return  MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
               Color.fromARGB(255, 85, 30, 180),
               Color.fromARGB(255, 108, 59, 192)
                 
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          // burada iki nokta değilse anlamında ? işareti ise doğru yanlıs anlamak için
          child: screenWidget,
        ),
      ),
    );
  }
}