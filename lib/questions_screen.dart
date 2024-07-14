import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key,required this.onSelectAnswer,});

final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex=0;
  void answerQuestion(String selectedAnswers){
    //widget. sayesinde yukardakiclassta verilen onselect fonk burada kullanılabilir
    widget.onSelectAnswer('..');
    setState(() {
      currentQuestionIndex++;
    });
    
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(
          40,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch, //yatay eksen
          children: [
            Text(
              currentQuestion.text,
              //fonts.google sitede ornekler var
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            //item random bir isim
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return AnswerButton(
                answerText: answer, 
                onTap: (){
                answerQuestion(answer);
              },);
            },
            ),
          ],
        ),
      ),
    );
  }
}
