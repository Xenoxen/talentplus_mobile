import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:talentplus_mobile/talent/profile.dart';
import 'package:talentplus_mobile/widgets/appBar.dart';
import 'package:talentplus_mobile/widgets/form_elements.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';
import 'package:talentplus_mobile/widgets/profile_widgets.dart';


class RequestQuotation extends StatelessWidget
{
  Widget build(BuildContext context)
  {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: DefaultAppBar(
      ),
      body: ListView(
        padding: new EdgeInsets.all(20),
        children: <Widget>[
          Padding(
            padding: new EdgeInsets.fromLTRB(0, 15, 0, 15),
            child: Text('Inquire a Talent',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline)
          ),
          Padding(
            padding: new EdgeInsets.only(bottom: 15),
            child: Text("Fill out the form with your complete information and we'll get back to you within 24 hours.")
          ),

          Form(
            child: Column(
              children: <Widget>[
                TpTextField(
                  placeholder: 'Talent Code Number'
                ),
                TpTextField(
                    placeholder: 'Your Full Name'
                ),
                TpTextField(
                    placeholder: 'Your Contact Number'
                ),
                TpTextField(
                    placeholder: 'Your Email'
                ),
                TpTextField(
                    placeholder: 'Location'
                ),
                TpTextField(
                    placeholder: "From",
                    onTap: () {
                      DatePicker.showDatePicker(context);
                    }
                ),
                TpTextField(
                    placeholder: "To",
                    onTap: () {
                      DatePicker.showDatePicker(context);
                    }
                ),
                TpTextArea(
                  placeholder: "Message",
                ),
                Padding(
                  padding: new EdgeInsets.only(top: 10),
                  child: SizedBox(
                      width: width,
                      child: TpButton(
                        text: 'Send Request',
                        onPressed: () {},
                      )
                  )
                )



              ],
            )
          )
        ],
      )
    );
  }
}

class HireTalent extends StatelessWidget {

  final TalentProfile talent;

  HireTalent({
  Key key,
  @required this.talent
});


  Widget build(BuildContext context)
  {
    double getWidth(double size)
    {
      double width = MediaQuery.of(context).size.width*size;
      return width;
    }

    return Scaffold(
      appBar: DefaultAppBar(),
      body: ListView(
        padding: new EdgeInsets.all(20),
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                  padding: new EdgeInsets.all(15),
                  child: Hero(
                      tag: 'talentPic-${talent.id}',
                      child: CircleAvatar(
                        radius: 100,
                        backgroundImage: AssetImage(talent.image),
                      )
                  )
              ),
              Padding(
                padding: new EdgeInsets.only(bottom: 12),
                child: Container(
              width: getWidth(0.75),
              child: Hero(
              tag: 'talentName-${talent.id}',
              child: Text("You are requesting a quotation from ${talent.name}",
              textAlign: TextAlign.center,
              style: Theme.of(context).primaryTextTheme.title)
              ))
              ),
              TpTextField(
                  placeholder: 'Your Contact Number'
              ),
              TpTextField(
                  placeholder: 'Your Email'
              ),
              TpTextField(
                  placeholder: 'Location'
              ),
              TpTextField(
                  placeholder: "From",
                  onTap: () {
                    DatePicker.showDatePicker(context);
                  }
              ),
              TpTextField(
                  placeholder: "To",
                  onTap: () {
                    DatePicker.showDatePicker(context);
                  }
              ),
              TpTextArea(
                placeholder: "Message",
              ),
              TpButton(
                text: 'Send Request',
                onPressed: () {},
              )


            ],
          )
        ],
      )
    );
  }
}