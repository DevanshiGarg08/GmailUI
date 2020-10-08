import 'package:flutter/material.dart';
import 'package:navigation/model/mails.dart';

class Internal extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final Map emails = ModalRoute.of(context).settings.arguments;

    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              }),
          //  title: Text(""),
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.archive,
                    size: 26.0,
                  ),
                )),
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.delete,
                    size: 26.0,
                  ),
                )),
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.mail,
                    size: 26.0,
                  ),
                )),
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.more_vert,
                    size: 26.0,
                  ),
                ))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            ListTile(
              title: Text(
                emails['title'],
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins'),
              ),
              trailing: Icon(Icons.star_border),
            ),
            Container(
              child: FlatButton(
                onPressed: () {},
                child: Text(
                  "Inbox",
                  style: TextStyle(fontSize: 12.0),
                ),
                color: Colors.grey[300],
              ),
              width: 65.0,
              height: 22.0,
              margin: EdgeInsets.only(right: 310.0),
            ),
            Divider(),
            ListTile(
              isThreeLine: true,
              leading: CircleAvatar(
                backgroundColor: emails['colors'],
                child: Text(
                  emails['main'].substring(0, 1),
                  style: TextStyle(fontSize: 25.0, color: Colors.white),
                ),
                radius: 26,
              ),
              title: Text(
                emails['main'],
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins',
                ),
              ),
              subtitle: Column(children: <Widget>[
                Text(
                  "to me",
                  textAlign: TextAlign.left,
                  // overflow: TextOverflow.ellipsis,
                  // softWrap: false,
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      color: Colors.grey),
                ),
                Row(children: [
                  Text(
                    "${emails['time']}",
                    // overflow: TextOverflow.ellipsis,
                    //   softWrap: false,
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                        color: Colors.grey),
                  ),
                  SizedBox(width: 8.0),
                  Text(
                    "View Details",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                        color: Colors.blue),
                  )
                ])
              ], crossAxisAlignment: CrossAxisAlignment.stretch),
              trailing: Wrap(
                spacing: 12,
                children: <Widget>[
                  Icon(Icons.reply),
                  Icon(Icons.more_vert),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            Row(children: [
              SizedBox(width: 100.0),
              Text(
                "To view this email as a webpage,",
                style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    color: Colors.black),
              ),
              SizedBox(width: 3.0),
              Text(
                "Click here",
                style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    color: Colors.blue),
              )
            ]),
            SizedBox(height: 8.0),
            Alexa(),
            SizedBox(height: 8.0),
            Container(
              child: Column(
                children: [
                  Text(
                    emails['heading'],
                    style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins'),
                  ),
                  Text(
                     emails['para'],
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Poppins'),
                  )
                ],
              ),
              margin: EdgeInsets.all(10.0),
            )
          ]),
        ));
    throw UnimplementedError();
  }
}

class Alexa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    AssetImage asset = AssetImage('images/alexa.jpg');
    Image image = Image(image: asset);
    return Container(child: image);
    throw UnimplementedError();
  }
}
