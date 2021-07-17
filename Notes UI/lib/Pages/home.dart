import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: AppBar(
        title: Text(
          'Notes',
          style: TextStyle(
            fontSize: 30,
            color: Colors.amber,
          ),
        ),
        backgroundColor: Colors.grey[900],
        toolbarHeight: 75,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            SizedBox(
              width: 1500,
              height: 75,
              child: ElevatedButton(
                onPressed: () async{
                  await Navigator.pushNamed(context, '/enter');
                },
                child: Text(
                  'Title...',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey[800],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/enter');
        },
        backgroundColor: Colors.amber[800],
        child: Icon(Icons.add),
      ),
    );
  }
}
