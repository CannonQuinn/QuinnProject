import 'package:http/http.dart' as http;
import './questionmodel.dart';
import 'dart:convert';

class connect {

  //this designates database
  final url = Uri.parse('https://geotest-eeec7-default-rtdb.firebaseio.com/questions.json');
  //this saves them
  Future<void> addQuestion(Question question) async {

    http.post(
      url,
      body: json.encode({
        'title': question.title,
        'answers': question.answer,
      })
    );
  }

  //this gets them
  Future<void> fetchQuestions() async {
    http.get(url).then((response) {

      var data = json.decode(response.body);
      print(data);
      
    });
  }

}