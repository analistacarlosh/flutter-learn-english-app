import 'package:flutter/material.dart';
import 'package:flutter_learn_english_app/common_widget/send_button.dart';

import '../../style.dart';

class CompleteQuizScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CompleteQuizScreen();
  }
}

class _CompleteQuizScreen extends State<CompleteQuizScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Quiz'),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 10),
                padding: defaultPadding,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Time Left: 10sec', style: defaultStyleText),
                    Text('1/10', style: defaultStyleText)
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 20),
                padding: defaultPadding,
                child: LinearProgressIndicator(
                  value: 0.2,
                  backgroundColor: Colors.lightBlueAccent,
                  semanticsLabel: 'Indicator',
                  semanticsValue: 'Indicator',
                ),
              ),
              Container(
                padding: defaultPadding,
                child: RichText(
                    text: TextSpan(
                        text: '1.',
                        style: defaultStyleText.copyWith(
                          color: Colors.blue, fontSize: 22,
                        ),
                        children: <TextSpan>[
                          TextSpan(text: 'The length of the bridge, which a train 130'
                              ' metres long and trabelling at 45 km/hrcan cross in 30'
                              ' sconds, is:',
                              style: defaultStyleText.copyWith(
                                  fontSize: 22
                              )
                          )
                        ]
                    )
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListView.builder(
                padding: defaultPadding,
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (BuildContext ctx, i) {
                  return Container(
                    height: 55,
                    child: Card(
                      elevation: 5,
                      child: Container(
                        padding: EdgeInsets.only(top: 0, left: 10),
                        child: Row(
                          children: <Widget>[
                            Text('A.',
                              style: defaultStyleText.copyWith(
                                color: Colors.blue, fontSize: 22,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text('200 m'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        bottomNavigationBar: SendButton(() {
          print('pressed');
        }, 'Send')
    );
  }
}