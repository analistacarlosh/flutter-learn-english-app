import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _LoginState();
  }
}

class _LoginState extends State<LoginScreen> {

  final TextStyle itemTitleStyle = TextStyle(
      fontWeight: FontWeight.w800,
      fontSize: 18,
      color: Colors.white
  );
  final TextStyle itemDescStyle = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 16,
      color: Colors.white
  );
  final double iconSize = 90.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      "\n this App will help you with these verbs.",
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
                subtitle: Text('With this App you can have a good way to study and practice.',
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
                subtitle: Text('Receive feedbacks to get more improvements in your English.',
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
    );
  }
}