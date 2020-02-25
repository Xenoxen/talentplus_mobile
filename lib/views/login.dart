import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:talentplus_mobile/views/home.dart';
import 'package:talentplus_mobile/views/register.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:talentplus_mobile/widgets/form_elements.dart';
import 'package:talentplus_mobile/widgets/navBar.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';

class LoginView extends StatefulWidget
{
  @override
  LoginState createState() => LoginState();
}

final loginFormkey= GlobalKey<FormState>();
final username = TextEditingController();
final password = TextEditingController();

class LoginState extends State<LoginView>
{
  Widget build(BuildContext context)
  {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Center(
            child:  ListView(
              shrinkWrap: true,
              padding: new EdgeInsets.all(20),
              children: <Widget>[
                SizedBox(
                    height: 300,
                    child: Column(
                      children: <Widget>[
                        Image.asset('assets/images/tplogo-white.png',
                            height: 75,
                            width: 75),
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                              style: new TextStyle(
                                  fontSize: 30
                              ),
                              children: <TextSpan> [
                                new TextSpan(
                                    text: 'T A L E N T ',
                                    style: new TextStyle(
                                      fontWeight: FontWeight.w300,
                                    )
                                ),
                                new TextSpan(
                                    text: 'Plus',
                                    style: new TextStyle(
                                        fontFamily: 'TakenByVultures2',
                                        fontSize: 60
                                    )
                                ),

                              ]),
                        ),
                      ],
                    )
                ),
                Form(
                    child: Column(
                      children: <Widget>[
                        TpTextField(
                            placeholder: 'Username',
                        ),
                        TpTextField(
                          placeholder: 'Password',
                          obscure: true,
                        ),

                      ],
                    )
                ),
                TpButton(
                  text: 'Sign In',
                  onPressed: () {
                    //DatePicker.showDatePicker(context);

                    Navigator.pushReplacement(context,
                      MaterialPageRoute(
                          builder: (context) => DefaultNavBar(
                            index: 0
                          )
                      ));

                  },
                ),
                Column(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {},
                        child: Text('Forgot Password?')
                    ),
                    Text("v0.0.1+1")
                  ],
                )

              ],

            )
        )
    );
  }
}

class LoginHome extends StatelessWidget
{
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Center(
        child:  ListView(
          shrinkWrap: true,
          padding: new EdgeInsets.all(20),
            children: <Widget>[
              SizedBox(
                  height: 300,
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/images/tplogo-white.png',
                        height: 75,
                        width: 75),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                            style: new TextStyle(
                                fontSize: 30
                            ),
                            children: <TextSpan> [
                              new TextSpan(
                                  text: 'T A L E N T ',
                                  style: new TextStyle(
                                    fontWeight: FontWeight.w300,
                                  )
                              ),
                              new TextSpan(
                                  text: 'Plus',
                                  style: new TextStyle(
                                      fontFamily: 'TakenByVultures2',
                                      fontSize: 60
                                  )
                              ),

                            ]),
                      ),
                    ],
                  )
              ),
              SizedBox(
                height: 250,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    TpButtonIcon(
                      color: Color(0xff4267b2),
                      icon: FontAwesomeIcons.facebook,
                      text: 'Sign in with Facebook',
                      onPressed: () {},
                    ),
                    TpButtonIcon(
                      color: Theme.of(context).primaryColor,
                      icon: FontAwesomeIcons.mobileAlt,
                      text: 'Sign in with Mobile',
                      onPressed: () {
                        Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => LoginView(
                              )
                          ),);
                      },
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => Register1(
                              )
                          ),);
                      },
                      child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                              children: <TextSpan> [
                                TextSpan(
                                    text: "Don't have an account? "
                                ),
                                TextSpan(
                                    text: "Sign up",
                                    style: new TextStyle(
                                        color: Theme.of(context).accentColor,
                                        fontWeight: FontWeight.bold
                                    )
                                )

                              ]
                          )
                      ),
                    ),

                    Text("v0.0.1+1")
                  ],
                )
              )


            ],

        )
      )
    );
  }
}