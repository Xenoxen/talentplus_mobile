import 'package:flutter/material.dart';
import 'package:talentplus_mobile/widgets/appBar.dart';
import 'package:talentplus_mobile/widgets/profile_widgets.dart';

class HomeView extends StatelessWidget
{
  HomeView({
   Key key
}) : super(key:key);
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: DefaultAppBar(),
      body: ListView(
        padding: const EdgeInsets.only(top: 20),
        children: <Widget>[

          Padding(
              padding: new EdgeInsets.all(12),
              child: RichText(

                  text: TextSpan(
                      children: <TextSpan>
                      [
                        TextSpan(
                            text: 'FEATURED ARTISTS',
                            style: Theme.of(context).primaryTextTheme.title
                        ),
                        TextSpan(
                            text: '\nCheck out these trending and active artists.',
                            style:Theme.of(context).primaryTextTheme.subtitle
                        )
                      ]
                  )
              )
          ),
          SizedBox(
            height: 200,
            child: GridView.count(
              scrollDirection: Axis.horizontal,
              childAspectRatio: (1.3/1),
              // Create a grid with 2 columns. If you change the scrollDirection to
              // horizontal, this would produce 2 rows.
              crossAxisCount: 1,
              crossAxisSpacing: 5.0,
              mainAxisSpacing: 5.0,
              // Generate 100 Widgets that display their index in the List
              children: <Widget>[
                ProfileEntry(
                    id: 1,
                    name: 'Frolyn M. Raguindin',
                    image: 'assets/images/M2019.jpg',
                    location: 'Tarlac City, Philippines'
                ),
                ProfileEntry(
                    id: 2,
                    name: 'Jessica Ann Calma',
                    image: 'assets/images/profile_photo.jpg',
                    location: 'Metro Manila, Philippines'
                ),
                ProfileEntry(
                    id: 3,
                    name: 'Erika Alarin',
                    image: 'assets/images/erika.jpg',
                    location: 'Tarlac City, Philippines'
                ),
                ProfileEntry(
                    id: 4,
                    name: 'Erika Alarin',
                    image: 'assets/images/erika.jpg',
                    location: 'Philippines'
                ),

              ],
            ),
          ),

          Padding(
              padding: new EdgeInsets.all(12),
              child: RichText(
                  text: TextSpan(
                      children: <TextSpan>
                      [
                        TextSpan(
                            text: 'CATEGORIES',
                          style: Theme.of(context).primaryTextTheme.title
                        ),
                        TextSpan(
                            text: '\nFind the right artist for you by category.',
                            style:Theme.of(context).primaryTextTheme.subtitle
                        )
                      ]
                  )
              )
          ),
          Padding(
            padding: new EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: SizedBox(
                height: 180,
                child: GridView.count(
                  scrollDirection: Axis.horizontal,
                  crossAxisCount: 2,
                  crossAxisSpacing: 5.0,
                  mainAxisSpacing: 5.0,
                  children: <Widget>[
                    TalentCategory(
                        text: 'Hair & Makeup',
                        image: 'assets/images/hair-makeup.jpg'),
                    TalentCategory(
                        text: 'Photographers',
                        image: 'assets/images/photographer.jpg'
                    ),
                    TalentCategory(
                        text: 'Other',
                        image: 'assets/images/other.jpg'
                    ),
                    TalentCategory(
                        text: 'Event Managers',
                        image: 'assets/images/event-managers.jpg'
                    ),
                    TalentCategory(
                        text: 'Designers',
                        image: 'assets/images/designers.jpg'
                    ),
                    TalentCategory(
                        text: 'Stylists',
                        image: 'assets/images/stylists.jpg'
                    ),
                    TalentCategory(
                        text: 'Male Models',
                        image: 'assets/images/male.jpg'
                    ),
                    TalentCategory(
                        text: 'Female Models',
                        image: 'assets/images/female.jpg'
                    )
                  ],
                )
            )
          )


        ],
      )
    );
  }
}