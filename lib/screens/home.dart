//This is imported to main


import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../constants.dart'; //get our colors
import '../models/questionmodel.dart';
import '../widgets/question_widget.dart';
import '../widgets/next_button.dart';

//This creates the Home Screen widget

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  //preset questions
  List<Question> _questions = [
    Question(
      id: '1',
      title:'What is the tallest mountain in North America?',
      answer: {'Denali': true, 'Mount Bona': false, 'Mount Hunter': false,
       'Nevado de Toluca': false}
    ),
    Question(
      id: '2',
      title:'How many states are there in the United States of America?',
      answer: {'25': false, '50': true, '4': false, '48': false}
    ),
    Question(
      id: '3',
      title:'How many states does Mexico have?',
      answer: {'27': true, '18': false, '50': false, '32': true}
    ),
    Question(
      id: '4',
      title:'How many countries are in the North American continent?',
      answer: {'3': false, '30': false, '23': true, '7': false}
    ),
    Question(
      id: '5',
      title:'What is the largest lake in North America?',
      answer: {'Lake Superior':true, 'Great Slave Lake': false,
       'Great Salt Lake': false, 'Lake Okeechobee': false}
    ),
    Question(
      id: '6',
      title:'What is the longest tributary of the Mississippi?',
      answer: {'Columbia River': false, 'Missouri River': true,
       'Tennessee River': false, 'Ohio River': false}
    ),
    Question(
      id: '7',
      title:'What is the biggest mountain range in North America?',
      answer: {'Appalachians':false, 'Cascades': false, 'Sierra Madre': false,
       'Rockies': true}
    ),
    Question(
      id: '8',
      title:'What is the smallest river in the US?',
      answer: {'Columbia River':false, 'Roe River': true, 'Snake River': false,
       'Colorado': false}
    ),
    Question(
      id: '9',
      title:'How tall is Mount Marcy?',
      answer: {'5,343 ft.':true, '342 ft.': false, '1,478 ft.': false,
       '2,000 ft.': false}
    ),
    Question(
      id: '10',
      title:'What is the hottest point that the mojave has ever reached?',
      answer: {'200°F':false, '60°F': false, '134°F': true,
       '46°C': false}
    )
  ];

  //this is to help us go through the qs
  int index = 0;

  void nextQuestion(){
    if(index == _questions.length - 1){
      return;
    }
    else{
      setState(() {
        index++;
      });
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        title: const Text('Geography Test'),
        backgroundColor: background,
        shadowColor: Colors.transparent,
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            QuestionWidget(
              indexAction: index,
              question: _questions[index].title,
              totalQuestions: _questions.length
            ),
            const Divider(color: neutral),

            const SizedBox(height: 25.0),
            for(int i = 0; i < _questions[index].answer.length; i++)
              Card(child: Text(_questions[index].answer.keys.toList()[i]),)
          ],)
      ),

      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: NextButton(
          nextQuestion: nextQuestion,

        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}