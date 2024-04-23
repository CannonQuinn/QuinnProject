//Create "question" object


class Question{
  //what features do questions have?
  //they have identifiers
  final String id;
  //they have titles/ what the question is
  final String title;
  //answer choices
  final Map<String, bool> answer;
  //The final keyword keeps the data in the variables constant
  //This is good for now, but we will need to change this in the future
  //For user made quizzes

  //make constructor for our class this will allow for different instances of our "questions"
  Question({
    required this.id,
    required this.title,
    required this.answer,
  });

  //this overrides the two string method,
  //this allows us to print to console
  @override
  String toString() {
    return 'Question(id: $id, title: $title, answer: $answer)';
  }
}

