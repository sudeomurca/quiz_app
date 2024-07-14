class QuizQuestion {
  const QuizQuestion(this.text,this.answers);
  final String text;
  final List<String> answers;

 List <String> getShuffledAnswers()
 {//of ile liste kopyalanır yeni liste olusturulur
 //shuffle ile ise o liste karışık sırayla değişir kopyalanmaz
 final shuffledList= List.of(answers);//final değişkeni yeniden atamayacağınızı söyler -bellek tasarruf-
 shuffledList.shuffle();
 return shuffledList;
 }
}