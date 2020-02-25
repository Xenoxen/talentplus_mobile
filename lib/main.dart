import 'package:flutter/material.dart';
import 'package:talentplus_mobile/views/login.dart';
void main() => runApp(Main());


class Main extends StatefulWidget
{
  @override
MainApp createState() => MainApp();
}
class MainApp extends State<Main>{



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginHome(),
        theme: ThemeData(
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.white,
            focusColor: Colors.blue,
          ),
          primaryIconTheme: IconThemeData(
            color: Colors.white,
          ),
            cursorColor: Colors.red[700],
            primaryColor: Color(0xffc10005),
            accentColor: Color(0xffff7d81),
            primaryColorLight: Colors.white,
            //fontFamily: 'CenturyGothic',
            canvasColor: Color(0xff212121),
            accentTextTheme: TextTheme(
                headline: TextStyle(
                    fontSize: 24.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w300
                ),
                title: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                ),
                button: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w400
                ),
                body1: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                )
            ),
            primaryTextTheme: TextTheme(
              headline: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 30,
                letterSpacing: 2,
              ),
                  title: TextStyle(
                fontWeight: FontWeight.w300,
              fontSize: 18,
              letterSpacing: 1
            ),
              subtitle: TextStyle(
                  fontWeight: FontWeight.w200,
                  fontSize: 14
              ),
              button: TextStyle(
                fontWeight: FontWeight.w300,
              ),
              body1: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 16
              ),
              body2: TextStyle(
                fontWeight: FontWeight.w200,
                fontSize: 13
              )
            ),
            textTheme: TextTheme(
                headline: TextStyle(
                    fontSize: 48.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w400
                ),
                title: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                ),
                button: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w300
                ),
                body1: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                )
            )
        )
    );
  }
}