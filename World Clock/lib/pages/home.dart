import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};

  @override
  Widget build(BuildContext context) {

    data = data.isNotEmpty ? data : ModalRoute.of(context).settings.arguments;
    print(data);

    // set Background Image
    String bgImage = data['isDayTime'] ? 'day.png' : 'night.png';

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/$bgImage'),
            fit: BoxFit.cover,
          )
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
          child: Column(
          children: <Widget>[
            TextButton.icon(
              onPressed: () async{
                dynamic update = await Navigator.pushNamed(context, '/location');
                setState(() {
                  if(update != null) data = update;
                });
              },
              icon: Icon(
                Icons.edit_location,
                color: Colors.grey[300],
              ),
              label: Text(
                'Edit Location',
                style: TextStyle(
                  color: Colors.grey[300],
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  data['location'],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    letterSpacing: 2,
                  ),
                )
              ],
            ),
            SizedBox(height: 20),
            Text(
              data['time'],
              style: TextStyle(
                fontSize: 66,
                color: Colors.white,
              ),
            ),
          ],
          ),
        ),
      )
    );
  }
}
