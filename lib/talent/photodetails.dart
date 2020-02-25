import 'package:flutter/material.dart';
import 'package:talentplus_mobile/widgets/appBar.dart';
import 'package:talentplus_mobile/widgets/profile_widgets.dart';

class MediaDetails extends StatelessWidget
{
  final Photo photo;

  MediaDetails({

   @required this.photo

});
  @override
  Widget build(BuildContext context)
  {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: DefaultAppBar(
      ),
      body: Container(
        child: Column(
          children: <Widget>[

            Hero(
              tag: 'talentMedia-' + photo.id.toString(),
              child: Stack(
                children: <Widget>[
                  Image.asset(photo.image),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      width: width,
                        padding: new EdgeInsets.fromLTRB(20, 8, 20, 8),
                        color: Colors.black.withOpacity(0.5),
                        child: Text(photo.title,
                            style: new TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18
                            )),
                        alignment: Alignment(-1, 1)
                    )
                  )

                ],
              )
            ),
            Padding(
              padding: new EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Column(
                children: <Widget>[

                  Padding(
                    padding: new EdgeInsets.only(top: 12),
                    child: Text(photo.desc,
                    style: new TextStyle(
                      fontSize: 16,
                    ))
                  )

                ],
              )
            )
          ],
        )
      )
    );
  }
}