import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TpTextField extends StatelessWidget
{

  final String placeholder;
  final Color color;
  final TextInputType keyboard;
  final bool obscure;
  bool enabled;
  final TextEditingController controller;
  Function onChanged  = (value) {};
  Function onTap = (value) {};
  Function valid = (value) {
    return null;
  };
  //final String validator;

  TpTextField({
    @required this.placeholder,
    this.color = Colors.white,
    @required this.controller,
    this.keyboard,
    this.obscure = false,
    this.onChanged,
    this.enabled = true,
    this.valid,
    this.onTap
  });

  FocusNode node = new FocusNode();
  Widget build(BuildContext context)
  {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 3.0, 0, 3.0),
      child: TextFormField(
        focusNode: node,
        enabled: enabled,
        onTap: onTap,
        onChanged: onChanged,
        controller: controller,
        obscureText: obscure,
        style: Theme.of(context).primaryTextTheme.body1,
        keyboardType: keyboard,
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xff323232),
          focusColor: Color(0xff666666),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xff323232)
            ),
            borderRadius: BorderRadius.circular(10)
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xffc10005),
              width: 2,
            ),
              borderRadius: BorderRadius.circular(10)
          ),
          labelText: placeholder,
          labelStyle: TextStyle(
            color: Colors.white,
          ),
          border: InputBorder.none
        ),
      )
    );
  }
}

class TpTextArea extends StatelessWidget
{

  final String placeholder;
  final Color color;
  final TextInputType keyboard;
  final bool obscure;
  int lines;
  bool enabled;
  final TextEditingController controller;
  Function onChanged  = (value) {};
  Function onTap = (value) {};
  Function valid = (value) {
    return null;
  };
  //final String validator;

  TpTextArea({
    @required this.placeholder,
    this.color = Colors.white,
    @required this.controller,
    this.keyboard,
    this.lines = 4,
    this.obscure = false,
    this.onChanged,
    this.enabled = true,
    this.valid,
    this.onTap
  });

  FocusNode node = new FocusNode();
  Widget build(BuildContext context)
  {
    return Container(
        margin: const EdgeInsets.fromLTRB(0, 3.0, 0, 3.0),
        child: TextFormField(
          maxLines: lines,
            focusNode: node,
            enabled: enabled,
            onTap: onTap,
            onChanged: onChanged,
            controller: controller,
            obscureText: obscure,
            style: Theme.of(context).textTheme.body1,
            keyboardType: keyboard,
            decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xff323232),
                focusColor: Color(0xff666666),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color(0xff323232)
                    ),
                    borderRadius: BorderRadius.circular(10)
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffc10005),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10)
                ),
                labelText: placeholder,
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
                border: InputBorder.none
            ),
            validator: this.valid
        )
    );
  }
}


class TpButton extends StatelessWidget
{
  final String text;
  final Function onPressed;

  TpButton({
    @required this.text,
    @required this.onPressed
});

  Widget build(BuildContext context)
  {
    return Padding(
      padding: new EdgeInsets.fromLTRB(0, 3, 0, 3),
      child: FlatButton(
          padding: const EdgeInsets.fromLTRB(0, 17, 0, 17),
          onPressed: onPressed,
          textColor: Colors.white,
          disabledColor: Color(0xff666666),
          color: Theme.of(context).primaryColor,
          child: Text(text)
      )
    );
  }
}

class TpButtonIcon extends StatelessWidget
{
  final Color color;
  final String text;
  final Function onPressed;
  final IconData icon;

  TpButtonIcon({
    @required this.color,
    @required this.text,
    @required this.onPressed,
    @required this.icon
  });

  Widget build(BuildContext context)
  {
    return Padding(
        padding: new EdgeInsets.fromLTRB(0, 3, 0, 3),
        child: FlatButton(
            padding: const EdgeInsets.fromLTRB(20, 17, 20, 17),
            onPressed: onPressed,
            textColor: Colors.white,
            disabledColor: Color(0xff666666),
            color: color,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: new EdgeInsets.only(right: 15.0),
                  child: Icon(icon)
                ),

                Text(text,
                textAlign: TextAlign.center)
              ],
            )
        )
    );
  }
}

class SocialButton extends StatelessWidget
{
  final IconData icon;
  final Color color;
  final Function onPressed;

  SocialButton({
    @required this.color,
    @required this.icon,
    @required this.onPressed
});

  Widget build(BuildContext context)
  {

    return SizedBox(
      height: 75.0,
      width: 75.0,
      child: Material(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: Ink(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: color
            ),
            child: IconButton(
                iconSize: 24,
                icon: new Icon(icon,
                color: Colors.white),
            color: color,
            onPressed: onPressed,
          )
      ),
    )
    );
  }
}

class DropdownBtn extends StatefulWidget {
  DropdownBtn({Key key,
    @required this.placeholder,
    @required this.items,
    this.secondItems,
    @required this.controller,
    this.value,
  }) : super(key: key);

  final String placeholder;
  final List <String> secondItems;
  final List <String> items;
  String value;
  final TextEditingController controller;

  @override
  DropdownState createState() => DropdownState();
}


class DropdownState extends State<DropdownBtn>
{

  String dropdownValue;

  @override
  Widget build(BuildContext context)
  {

    return Container(
        margin: const EdgeInsets.fromLTRB(0, 5.0, 0, 8.0),
        alignment: Alignment(1,0),
        width: 400,
        height: 60,
        decoration: new BoxDecoration(
          borderRadius: new BorderRadius.all(new Radius.circular(10.0)),
          color: Color(0xff323232),
        ),
        padding: new EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
        child: new DropdownButton<String>(
          hint: Text(widget.placeholder,
          style: Theme.of(context).primaryTextTheme.title),
          isExpanded: true,
          icon: Icon(FontAwesomeIcons.arrowCircleDown),
          iconSize: 24,
          value: dropdownValue,
          elevation: 16,
          style: Theme.of(context).textTheme.body1,
          underline: Container(
            height: 0,
          ),
          onChanged: (String newValue) {
            setState(() {
              dropdownValue = newValue;
              widget.value = newValue;
            });
          },
          items: widget.items
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        )
    );
  }
}
