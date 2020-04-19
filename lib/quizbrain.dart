import 'questions.dart';

class QuizBrain {
  int _questionNumber = 0;
  int _score = 0;

  List<Question> _questionBank = [
    Question(questionText: "Question 1", questionAnswer: false),
    Question(questionText: "Question 2", questionAnswer: true),
    Question(questionText: "Question 3", questionAnswer: false),
    Question(questionText: "Question 4", questionAnswer: true),
    Question(questionText: "Question 5", questionAnswer: false),
    Question(questionText: "Question 6", questionAnswer: true),
    Question(questionText: "Question 7", questionAnswer: false),
    Question(questionText: "Question 8", questionAnswer: true),
    Question(questionText: "Question 9", questionAnswer: false),
    Question(questionText: "Question 10", questionAnswer: true),
  ];

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  void nextQuestion() {
    
      _questionNumber++;
    
  }

  bool isFinished() {
    if (_questionNumber == _questionBank.length -1) {
      return true;
    } else {
      return false;
    }
  }

  int getScore() {
    return _score;
  }

  void incrementScore() {
    _score++;
  }

  void reset() {
    _questionNumber = 0;
    _score = 0;
  }
}
