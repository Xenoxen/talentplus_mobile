import 'package:flutter/material.dart';
import 'package:talentplus_mobile/widgets/appBar.dart';
import 'package:talentplus_mobile/widgets/profile_widgets.dart';
import 'package:talentplus_mobile/widgets/navBar.dart';

class TalentProfile extends StatefulWidget
{
  final int id;
  final String name;
  final String image;
  final String location;

  TalentProfile({
    Key key,
    @required this.id,
    @required this.name,
    @required this.image,
    @required this.location
  }) : super(key: key);

  @override
  ProfileState createState() => ProfileState();
}

class ProfileState extends State<TalentProfile>
{

  double getWidth(double size)
  {
    double width = MediaQuery.of(context).size.width*size;
    return width;
  }


  @override
  Widget build(BuildContext context)
  {

    return Scaffold(
      appBar: DefaultAppBar(
      ),
      body: Container(

        child: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: <Widget>[
            Padding(
              padding: new EdgeInsets.all(12),
              child: Row(
                children: <Widget>[
                  Padding(
                      padding: new EdgeInsets.only(right: 20),
                      child: Hero(
                        tag: 'talentPic-${widget.id}',
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage(widget.image),
                        )
                      )
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: getWidth(0.55),
                        child: Hero(
                          tag: 'talentName-${widget.id}',
                          child: Text(widget.name,
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.title)
                        ),
                      ),
                      ProfileOptions()
                    ],
                  )



                ],
              )
            ),
            ProfileTab()



          ],
        )

      ));
  }
}