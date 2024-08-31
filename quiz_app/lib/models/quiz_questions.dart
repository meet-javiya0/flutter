class QuizQuestions {
  const QuizQuestions(this.question, this.answers);

  final String question;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    final shuffledList = List<String>.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}