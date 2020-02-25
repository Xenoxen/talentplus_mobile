import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:talentplus_mobile/widgets/appBar.dart';
import 'package:talentplus_mobile/widgets/navBar.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';
import 'package:talentplus_mobile/widgets/form_elements.dart';
import 'package:talentplus_mobile/data.dart';

class RegisterView extends StatefulWidget
{
  @override
  RegisterState createState() => RegisterState();
}


Countries countries = new Countries();

final registerFormkey= GlobalKey<FormState>();
final username = TextEditingController();
final password = TextEditingController();
String genderValue = '0';
bool agree = false;

class RegisterState extends State<RegisterView>
{
  Widget build(BuildContext context)
  {
    double width = MediaQuery.of(context).size.width*0.75;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black
        ),
        padding: new EdgeInsets.all(20.0),
        child: Center(
          child: ListView(
            children: <Widget>[
              Text('Register Your Talents!',
                textAlign: TextAlign.center,
                style: new TextStyle(
                  fontSize: 36
                )
              ),
              Form(
                key: registerFormkey,
                child: Column(
                  children: <Widget>[
                    Text('1. Basic Account Info'),
                    Divider(
                      color: Colors.white
                    ),
                    TpTextField(
                      placeholder: 'Username',
                      controller: username
                    ),
                    TpTextField(
                        placeholder: 'Password',
                        controller: password
                    ),
                    Text('2. Personal Info'),
                    Divider(
                        color: Colors.white
                    ),
                    TpTextField(
                        placeholder: 'First Name',
                    ),
                    TpTextField(
                      placeholder: 'Last Name',
                    ),

                    Theme(data:
                    ThemeData.dark(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Gender: '),
                        Radio(
                          value: '1',
                          onChanged: (value) => setState(() => genderValue = value),
                          groupValue: genderValue,
                          activeColor: Colors.red,
                        ),
                        Text('Male'),
                        Radio(
                          value: '2',
                          activeColor: Colors.red,
                          onChanged: (value) => setState(() => genderValue = value),
                          groupValue: genderValue,
                        ),
                        Text('Female')
                      ],
                    )
                    ),
                    TpTextField(
                      placeholder: "Birth Date",
                      onTap: () {
                        DatePicker.showDatePicker(context);
                      }
                    ),
                    TpTextField(
                      placeholder: 'E-mail Address',
                    ),
                    TpTextField(
                      placeholder: 'Mobile Number'
                    ),
                    TpTextField(
                      placeholder: 'Home Address'
                    ),
                    DropdownBtn(
                      placeholder: 'Country',
                      items: countries.getCountries()
                    ),
                    Padding(
                      padding: new EdgeInsets.fromLTRB(0, 12, 0, 12),
                      child: Theme(
                          data: ThemeData.dark(),
                          child: Row(
                            children: <Widget>[
                              Checkbox(
                                activeColor: Theme.of(context).primaryColor,
                                  value: agree,
                                onChanged: (bool value) {
                                    setState(() {
                                      agree = value;
                                    });
                                }
                              ),
                              Container(
                                  width: width,
                                  child: RichText(
                                      text: TextSpan(
                                          children: <TextSpan>
                                          [
                                            TextSpan(
                                                text: 'Please confirm that you agree to our '
                                            ),
                                            TextSpan(
                                                text: 'privacy policy.',
                                              style: new TextStyle(
                                                fontWeight: FontWeight.bold
                                              )
                                            )
                                          ]
                                      )
                                  )
                              )
                            ],
                          )
                      )
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[

                        TpButton(
                          text: 'Register',
                          onPressed: () {
                            Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (context) => RegistrationComplete(
                                  )
                              ),);
                          },
                        ),
                        TpButton(
                          text: 'Back',
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        )
                      ],
                    )

                  ],
                ),
              )
            ],
          )
        )
      )
    );
  }
}

class Register1 extends StatefulWidget
{
  @override
  Register1State createState() => Register1State();
}

class Register1State extends State<Register1>
{
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: EmptyAppBar(
        title: 'REGISTRATION'
      ),
      body: ListView(
        shrinkWrap: true,
        padding: new EdgeInsets.all(20),
        children: <Widget>[


          SizedBox(
            height: 400,
            child: Center(
              child: Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                          padding: new EdgeInsets.all(30),
                          child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                  children: <TextSpan>
                                  [
                                    TextSpan(
                                        text: 'STEP 1',
                                        style: Theme.of(context).textTheme.headline
                                    ),
                                    TextSpan(
                                        text: '\nBasic Account Info',
                                        style: Theme.of(context).accentTextTheme.headline
                                    )
                                  ]
                              )
                          )
                      ),
                      TpTextField(
                          placeholder: 'Username',
                          controller: username
                      ),
                      TpTextField(
                          placeholder: 'Password',
                          controller: password
                      ),

                    ],
                  )
              )
            )
          ),
          TpButton(
            text: 'Next',
            onPressed: () {
              Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => Register2(
                    )
                ),);
            },
          ),
          TpButton(
            text: 'Back',
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      )
    );
  }
}

class Register2 extends StatefulWidget
{
  @override
  Register2State createState() => Register2State();
}

class Register2State extends State<Register2>
{
  Widget build(BuildContext context)
  {
    double width = MediaQuery.of(context).size.width*0.75;

    return Scaffold(
        appBar: EmptyAppBar(
            title: 'REGISTRATION'
        ),
        body: ListView(
          shrinkWrap: true,
          padding: new EdgeInsets.all(20),
          children: <Widget>[


            SizedBox(
                height: 400,
                child: Center(
                    child: Form(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                                padding: new EdgeInsets.all(30),
                                child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                        children: <TextSpan>
                                        [
                                          TextSpan(
                                              text: 'STEP 2',
                                              style: Theme.of(context).textTheme.headline
                                          ),
                                          TextSpan(
                                              text: '\nPersonal Info',
                                              style: Theme.of(context).accentTextTheme.headline
                                          )
                                        ]
                                    )
                                )
                            ),
                            TpTextField(
                              placeholder: 'First Name',
                            ),
                            TpTextField(
                              placeholder: 'Last Name',
                            ),

                            Theme(data:
                            ThemeData.dark(),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text('Gender: '),
                                    Radio(
                                      value: '1',
                                      onChanged: (value) => setState(() => genderValue = value),
                                      groupValue: genderValue,
                                      activeColor: Colors.red,
                                    ),
                                    Text('Male'),
                                    Radio(
                                      value: '2',
                                      activeColor: Colors.red,
                                      onChanged: (value) => setState(() => genderValue = value),
                                      groupValue: genderValue,
                                    ),
                                    Text('Female')
                                  ],
                                )
                            ),
                            TpTextField(
                                placeholder: "Birth Date",
                                onTap: () {
                                  DatePicker.showDatePicker(context);
                                }
                            ),
                          ],
                        )
                    )
                )
            ),
            TpButton(
              text: 'Next',
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => Register3(
                      )
                  ),);
              },
            ),
            TpButton(
              text: 'Back',
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        )
    );
  }
}

class Register3 extends StatefulWidget
{
  @override
  Register3State createState() => Register3State();
}

class Register3State extends State<Register3>
{
  Widget build(BuildContext context)
  {
    double width = MediaQuery.of(context).size.width*0.75;
    double height = MediaQuery.of(context).size.height*1;

    return Scaffold(
        appBar: EmptyAppBar(
            title: 'REGISTRATION'
        ),
        body: ListView(
          shrinkWrap: true,
          padding: new EdgeInsets.all(20),
          children: <Widget>[


            SizedBox(
                height: 500,
                child: Center(
                    child: Form(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                                padding: new EdgeInsets.all(30),
                                child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                        children: <TextSpan>
                                        [
                                          TextSpan(
                                              text: 'STEP 3',
                                              style: Theme.of(context).textTheme.headline
                                          ),
                                          TextSpan(
                                              text: '\nContact Info',
                                              style: Theme.of(context).accentTextTheme.headline
                                          )
                                        ]
                                    )
                                )
                            ),
                            TpTextField(
                              placeholder: 'E-mail Address',
                            ),
                            TpTextField(
                                placeholder: 'Mobile Number'
                            ),
                            TpTextField(
                                placeholder: 'Home Address'
                            ),
                            DropdownBtn(
                                placeholder: 'Country',
                                items: countries.getCountries()
                            ),
                            Padding(
                                padding: new EdgeInsets.fromLTRB(0, 12, 0, 12),
                                child: Theme(
                                    data: ThemeData.dark(),
                                    child: Row(
                                      children: <Widget>[
                                        Checkbox(
                                            activeColor: Theme.of(context).primaryColor,
                                            value: agree,
                                            onChanged: (bool value) {
                                              setState(() {
                                                agree = value;
                                              });
                                            }
                                        ),
                                        Container(
                                            width: width,
                                            child: RichText(
                                                text: TextSpan(
                                                    children: <TextSpan>
                                                    [
                                                      TextSpan(
                                                          text: 'Please confirm that you agree to our '
                                                      ),
                                                      TextSpan(
                                                          text: 'privacy policy.',
                                                          style: new TextStyle(
                                                              fontWeight: FontWeight.bold
                                                          )
                                                      )
                                                    ]
                                                )
                                            )
                                        )
                                      ],
                                    )
                                )
                            ),
                          ],
                        )
                    )
                )
            ),
            TpButton(
              text: 'Register',
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => RegistrationComplete(
                      )
                  ),);
              },
            ),
            TpButton(
              text: 'Back',
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        )
    );
  }
}

class RegistrationComplete extends StatelessWidget
{
  Widget build(BuildContext context)
  {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.multiply),
                    image: AssetImage('assets/images/backgrounds/registerComplete.jpeg'),
                    fit: BoxFit.cover
                )
            ),
            child: Center(
                child: Padding(
                    padding: new EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text('Congratulations!',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 48.0,
                                fontWeight: FontWeight.w400
                            )),
                        Text('Your account registration is complete.',
                          textAlign: TextAlign.center,),
                        Padding(
                            padding: new EdgeInsets.all(10),
                            child: Hero(
                                tag: 'logo',
                                child: Image.asset('assets/images/tplogo-white.png',
                                    width: 200,
                                    height: 200)
                            )
                        ),

                        Text("Before anything else, let's update your profile picture and other details!",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 18
                            )),
                        FlatButton(
                            onPressed: () {
                              Navigator.push(context,
                                MaterialPageRoute(
                                    builder: (context) => DefaultNavBar(
                                        index: 0
                                    )

                                ),);
                            },
                            color: Theme.of(context).primaryColor,
                            padding: EdgeInsets.fromLTRB(30, 12, 30, 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Icon(FontAwesomeIcons.idCard,
                                    color: Colors.white),
                                Text("Take me to my Profile!",
                                    style: const TextStyle(
                                        color: Colors.white
                                    ))
                              ],
                            )
                        ),
                      ],
                    )
                )
            )
        )
    );
  }
}