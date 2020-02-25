import 'package:flutter/material.dart';
import 'package:talentplus_mobile/widgets/appBar.dart';
import 'package:talentplus_mobile/widgets/form_elements.dart';
import 'package:talentplus_mobile/widgets/profile_widgets.dart';
class Talents extends StatefulWidget
{
  Talents({
   Key key
}) : super(key:key);
  @override
  TalentsState createState() => TalentsState();
}

class TalentsState extends State<Talents>
{
  Widget build(BuildContext context)
  {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: DefaultAppBar(
      ),
      body: ListView(
        padding: new EdgeInsets.all(20),
        children: <Widget>[
          TpTextField(
            placeholder: 'Search Keywords',
          ),
          TpButton(
            text: 'Search',
            onPressed: () {},
          ),
          Divider(
            color: Colors.grey
          ),
          SizedBox(
              height: height,
            child: GridView.count(
              childAspectRatio: (1/1.3),
              scrollDirection: Axis.vertical,
              crossAxisCount: 2,
              crossAxisSpacing: 5.0,
              mainAxisSpacing: 5.0,
              // Generate 100 Widgets that display their index in the List
              children: <Widget>[
                ProfileEntry(
                  id: 1,
                  name: 'Frolyn M. Raguindin',
                  image: 'assets/images/M2019.jpg',
                  location: 'Philippines'
                ),
                ProfileEntry(
                    id: 2,
                    name: 'Erika Alarin',
                    image: 'assets/images/erika.jpg',
                    location: 'Philippines'
                ),
              ],
            )
          ),
        ],
      )
    );
  }
}