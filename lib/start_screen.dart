import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz,{super.key});
  
  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png', 
          width: 280,
          color: const Color.fromARGB(255, 202, 178, 241),
          ),
          const SizedBox(height: 80,),
          const Text('Learn Flutter the fun way!',style: TextStyle(
            color: Color.fromARGB(155, 233, 190, 240),
            fontSize: 23,
            
          ),
          ),
          const SizedBox(height: 30,),
          OutlinedButton.icon(
          onPressed: startQuiz,
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 17,)
            
          ),
          icon: const Icon(Icons.library_books,),
           label:const Text('Start Quiz'),
           ),
          
        ],
      ),
    );
  }
}
