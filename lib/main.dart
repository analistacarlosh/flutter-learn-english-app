import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' as foundation;
import 'package:flutter_learn_english_app/ui/login_screen/login_screen.dart';
import 'package:flutter_learn_english_app/ui/complete_quiz_screen/complete_quiz_screen.dart';

bool get isIOS => foundation.defaultTargetPlatform == TargetPlatform.iOS;

void main() => runApp(
    MaterialApp(
        title: 'English Quiz',
        theme: ThemeData(
          primaryColor: Color.fromRGBO(39, 110, 241, 1),
          primaryColorLight: Color.fromRGBO(99, 164, 255, 1),
          primaryColorDark: Color.fromRGBO(0, 75, 160, 1),
          primarySwatch: Colors.blue,
          brightness: Brightness.light,
          accentColor: Colors.blueAccent,
          backgroundColor: Color.fromRGBO(39, 110, 241, 1),
        ),
        home: LoginScreen(),
        // initialRoute: '/complete-quiz-screen',
        routes: {
          '/login': (context) => LoginScreen(),
          '/complete-quiz-screen': (context) => CompleteQuizScreen(),
        },
    )
);
