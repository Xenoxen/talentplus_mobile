import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;
class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget
{
  final double height;

  DefaultAppBar({
    this.height = 60,
  });

  Widget build(BuildContext context)
  {
    timeDilation = 1.0;
    return AppBar(
      centerTitle: true,
      backgroundColor: Theme.of(context).primaryColor,
      elevation: 2.0,

      title: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
            style: new TextStyle(
                fontSize: 18
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
                      fontSize: 36
                  )
              ),

            ]),
      ),
    );
  }
  @override
  Size get preferredSize => Size.fromHeight(height);
}

class EmptyAppBar extends StatelessWidget implements PreferredSizeWidget
{
  final double height;
  final String title;

  EmptyAppBar({
    this.height = 60,
    this.title = ""
  });

  Widget build(BuildContext context)
  {
    timeDilation = 2.0;
    return AppBar(
      centerTitle: true,
      backgroundColor: Theme.of(context).canvasColor,
      elevation: 0,
      title: Text(title,
      style: Theme.of(context).primaryTextTheme.headline)
    );
  }
  @override
  Size get preferredSize => Size.fromHeight(height);
}
