import 'package:flutter/material.dart';
import 'package:path/path.dart';

const TextStyle itemTitleStyle = TextStyle(
    fontWeight: FontWeight.w800,
    fontSize: 18,
    color: Colors.white
);

const TextStyle itemDescStyle = TextStyle(
  fontStyle: FontStyle.normal,
  fontSize: 16,
  color: Colors.white
);

const double iconSize = 90.0;

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
        home: Scaffold(
            backgroundColor: Color.fromRGBO(39, 110, 241, 1),
            body: Column(
              children: <Widget>[
                Container (
                  margin: EdgeInsets.only(top: 75),
                  child: Center(
                    child: Text('Irregular Verbs Quiz',
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 36,
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15, bottom: 20),
                  child: Container(
                    child: Center(
                      child: Text("English language has 160 irregular verbs,"
                          "\n this App will help you to test, learn and practive"
                          "these verbs.",
                        textAlign: TextAlign.center,
                        softWrap: true,
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 20,
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: ListTile(
                    leading: Icon(
                      Icons.assignment,
                      color: Colors.white,
                      size: iconSize,
                    ),
                    title: Text('Practice', style: itemTitleStyle),
                    subtitle: Text('With quiz you can test anc practice.',
                      style: itemDescStyle,
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: ListTile(
                    leading: Icon(
                      Icons.videogame_asset,
                      color: Colors.white,
                      size: iconSize,
                    ),
                    title: Text('Gamification', style: itemTitleStyle),
                    subtitle: Text('Learn in a smart and efficient way with your friends.',
                      style: itemDescStyle,
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: ListTile(
                    leading: Icon(
                      Icons.insert_chart,
                      color: Colors.white,
                      size: iconSize,
                    ),
                    title: Text('Results', style: itemTitleStyle),
                    subtitle: Text('Receive feedbacks to get more improvements.',
                      style: itemDescStyle,
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  fit: FlexFit.loose,
                  child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: MaterialButton(
                          minWidth: double.infinity,
                          height: 60,
                          child: Text(
                            'Login with Google',
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 22
                            ),
                          ),
                          color: Colors.white,
                          textColor: Colors.black,
                          elevation: 4.0,
                          onPressed: () {
                            print('Pressed');
                          }
                      )
                  ),
                ),
              ],
            )
        )
    )
);
