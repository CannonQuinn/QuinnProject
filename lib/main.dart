import 'package:flutter/material.dart';
import '/screens/home.dart'; //our home screen
import './models/database.dart';
import './models/questionmodel.dart';

void main(){
  
  var data = connect();
  data.addQuestion(
    Question(id: '22', title: 'Has this been added to the database?', answer: {'Yes':true, 'No': false })
  );
  
  //data.fetchQuestions();

  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
    
  }
}