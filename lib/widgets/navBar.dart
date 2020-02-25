import 'package:flutter/material.dart';
import 'package:talentplus_mobile/views/home.dart';
import 'package:talentplus_mobile/views/talents.dart';
import 'package:talentplus_mobile/talent/profile.dart';

class DefaultNavBar extends StatefulWidget {

  DefaultNavBar({
    this.index = 0,
    Key key
}) : super(key: key);
  int index;
  @override
  DefaultNavBarState createState() => DefaultNavBarState();
}

class DefaultNavBarState extends State<DefaultNavBar>
{
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  final PageStorageBucket bucket = PageStorageBucket();

  void initState()
  {
    _selectedIndex = widget.index;
  }
  void setIndex(int index)
  {
    this._selectedIndex = index;
  }
  final List<Widget> pages = <Widget>[

    Talents(
      key: PageStorageKey('talents')
    ),
    HomeView(
      key: PageStorageKey('home'),
    ),
    TalentProfile(
        key: PageStorageKey('profile'),
        id: 1,
        name: 'Frolyn M. Raguindin',
        image: 'assets/images/M2019.jpg',
        location: 'Philippines'
    ),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: navBar(_selectedIndex),
        body: PageStorage(
          child: pages[_selectedIndex],
          bucket: bucket,
        )
    );
  }

  Widget navBar(int index)
  {
    return ClipRRect(
        child: new Theme(
            data: Theme.of(context).copyWith(
              textTheme: Theme.of(context).primaryTextTheme,
                primaryColor: Colors.white,
                canvasColor: Theme.of(context).primaryColor),
            child: new BottomNavigationBar(
              onTap: (int index) => setState(() => _selectedIndex = index),
              currentIndex: _selectedIndex,
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.search), title: Text('Browse Talents')),
                BottomNavigationBarItem(icon: Icon(Icons.dashboard), title: Text('Home')),
                BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('My Profile')),
              ],
            )
        )
    );
  }
}