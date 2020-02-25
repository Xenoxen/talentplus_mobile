import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:talentplus_mobile/talent/photodetails.dart';
import 'package:talentplus_mobile/views/quote.dart';
import 'package:talentplus_mobile/talent/profile.dart';

class Photo extends StatelessWidget{
  final int id;
  final String title;
  final String desc;
  final String image;

  Photo({
    @required this.id,
    @required this.title,
    @required this.desc,
    @required this.image
});
  @override
  Widget build(BuildContext context)
  {
    return Hero(
      tag: 'talentMedia-${this.id}',
      child: GestureDetector(
          onTap: () {
            print('Photo ${this.image} pressed.');

            final photo = Photo(
              id: this.id,
              title: this.title,
              image: this.image,
              desc: this.desc,
            );
            print('ID: ${this.id}');
            Navigator.push(context,
              MaterialPageRoute(
                  builder: (context) => MediaDetails(
                    photo: photo
                  )
              ),);
          },
          child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(image)
                  )
              )
          )
      )
    );
  }
}
class ProfileOptions extends StatelessWidget
{
  Widget build(BuildContext context)
  {
    return Column(
      children: <Widget>
        [
        Visibility(
          visible: false,
          child: SizedBox(
            width: 200,
              child: FlatButton(
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                  onPressed: () {},
                  textColor: Colors.white,
                  disabledColor: Color(0xff666666),
                  color: Theme.of(context).primaryColor,
                  child: Text('Edit Profile')
              ),
          ),
            replacement: SizedBox(
              width: 200,
              child: FlatButton(
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                  onPressed: () {

                    final talent = new TalentProfile(
                        id: 1,
                        name: 'Frolyn M. Raguindin',
                        image: 'assets/images/M2019.jpg',
                        location: 'Tarlac City, Philippines'
                    );

                    Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context) => HireTalent(
                            talent: talent
                          )
                      ),);
                  },
                  textColor: Colors.white,
                  disabledColor: Color(0xff666666),
                  color: Theme.of(context).primaryColor,
                  child: Text('Request Quote')
              ),
            ),
        )
      ]
    );
  }
}
class ProfileTab extends StatelessWidget
{
  Widget build(BuildContext context)
  {
    return DefaultTabController(
        length: 2,
        child: Column(
          children: <Widget>[
            TabBar(
              indicatorColor: Theme.of(context).primaryColor,
              tabs: [
                Tab(icon: Icon(FontAwesomeIcons.photoVideo)),
                Tab(icon: Icon(FontAwesomeIcons.infoCircle)),
              ],
            ),
            SizedBox(
              height: 800,
              child: TabBarView(
                children: [
                  GridView.count(
                    // Create a grid with 2 columns. If you change the scrollDirection to
                    // horizontal, this would produce 2 rows.
                    crossAxisCount: 3,
                    crossAxisSpacing: 5.0,
                    mainAxisSpacing: 5.0,
                    // Generate 100 Widgets that display their index in the List
                    children: <Widget>[
                      Photo(image:
                      'assets/images/M2019.jpg',
                      id: 1,
                      title: 'My Profile Photo',
                      desc: 'This is my profile picture.'),
                      Photo(image:
                      'assets/images/carpet.jpg',
                          id: 2,
                          title: 'Go Green Carpet Cleaning Flyer Go Green Carpet Cleaning Flyer',
                          desc: 'Online flyer for Go Green Restoration Cleaning business.'),
                      Photo(image:
                      'assets/images/aegis.png',
                          id: 3,
                          title: 'AEGIS Concert Invitation',
                          desc: 'Personalized invitation for Bongbonga family to the Aegis Concert.'),
                      Photo(image:
                      'assets/images/M2019.jpg',
                          id: 4,
                          title: 'My Profile Photo',
                          desc: 'This is my profile picture.'),
                    ],
                  ),
                  Padding(
                    padding: new EdgeInsets.all(20),
                    child: ListView(
                      children: <Widget>[
                        Text('Biography',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold
                            )),
                        Container(
                          child: Text(
                            'This is my biography display in my Talent Plus Profile. This is my biography display in my Talent Plus Profile. This is my biography display in my Talent Plus Profile. This is my biography display in my Talent Plus Profile. This is my biography display in my Talent Plus Profile.'
                          ),
                        ),
                        Divider(
                          color: Colors.white
                        ),
                        Text('Skills',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold
                            )),
                        Container(
                          child: Text('Graphic Design, Fashion Design, Video Editing, Photography'),
                        ),

                      ],
                    )
                  )
                ],
              ),
            )

          ],
        )
    );
  }
}

class ProfileEntry extends StatelessWidget
{
  final int id;
  final String name;
  final String image;
  final String location;

  ProfileEntry({
    @required this.id,
    @required this.name,
    @required this.image,
    @required this.location
});

  Widget build(BuildContext context)
  {
    double height = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () {
        print('Tapped profile entry.');
        Navigator.push(context,
          MaterialPageRoute(
              builder: (context) => TalentProfile(
                id: this.id,
                name: this.name,
                image: this.image,
                location: this.location
              )
          ),);
      },
      child: Container(
        child: Column(
          children: <Widget>[
            Hero(
                tag: 'talentPic-${this.id}',
                child: Image.asset(this.image)
            ),
            Padding(
                padding: new EdgeInsets.fromLTRB(0, 6, 0, 3),
                child: Hero(
                    tag: 'talentName-${this.id}',
                    child: Text(this.name,
                        textAlign: TextAlign.left,
                        style: Theme.of(context).primaryTextTheme.body1)
                )
            ),
            Text(this.location,
                style: Theme.of(context).primaryTextTheme.body2)
          ],
        )
      ));
  }
}

class TalentCategory extends StatelessWidget
{
  final String text;
  final String image;
  TalentCategory({
   @required this.text,
   @required this.image
});
  Widget build(BuildContext context)
  {
    return Container(
      width: 50,
      height: 50,
      decoration: new BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.25), BlendMode.darken),
          image: AssetImage(this.image)
        )
      ),
      child: Center(

        child: Text(this.text,
        textAlign: TextAlign.center,
        style: Theme.of(context).primaryTextTheme.button)
      )
    );
  }
}