import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(
    myApp()
  );
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/me.jpg'),
            ),
            Text(
                'Gagan Pabla',
                style: TextStyle(
                    fontFamily: 'RockSalt',
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),
            ),
            Text(
              'COMPUTER SCIENTIST',
              style: TextStyle(
                fontFamily: 'SourceSansPro',
                color: Colors.white,
                fontSize: 20,
                letterSpacing: 2.5,
              )
            ),
            SizedBox(
              height: 20.0,
              width: 350,
              child: Divider(
                color: Colors.white,
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
              child: ListTile(
                leading: Icon(
                      Icons.phone,
                      color: Colors.black,
                    ),
                title: Text(
                      '40001-789-6255',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'SourceSansPro'
                      ),
                  ),
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
              child: ListTile(
                 leading: Icon(
                    Icons.email,
                    color: Colors.black,
                  ),
              title: Text('gagandeep.pabla@ontariotechu.net',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'SourceSansPro'
                ),
              ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Card(
                  margin: EdgeInsets.fromLTRB(6.0, 0.0, 0.0, 0.0),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB( 4.0, 4.0, 1.0, 1.0),
                    
                    child: new InkWell(
                        onTap: () => launch('https://github.com/CrownPab'),

                    child: Image(
                      image: NetworkImage('https://cdn.afterdawn.fi/v3/news/original/github-logo.png'),
                      height: 100,
                      width: 100,
                    ),
                    ),
                  ),
                ),
                Card(

                  child: Padding(
                    padding: const EdgeInsets.fromLTRB( 4.0, 4.0, 1.0, 1.0),
                    child: new InkWell(
                      onTap: () => launch('https://www.linkedin.com/in/gaganpabla377/'),

                      child: Image(
                        image: NetworkImage('https://pngimg.com/uploads/linkedIn/linkedIn_PNG38.png'),
                        height: 100,
                        width: 100,
                      ),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 6.0, 0.0),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB( 4.0, 4.0, 1.0, 1.0),
                    child: new InkWell(
                      onTap: () => launch('https://www.instagram.com/crownpab/'),

                      child: Image(
                        image: NetworkImage('https://www.brandchannel.com/wp-content/uploads/2016/05/instagram-new-logo-may-2016.jpg'),
                        height: 100,
                        width: 100,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),

        ),

      ),
    );
  }
}




