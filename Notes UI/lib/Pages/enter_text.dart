import 'dart:ui';

import 'package:flutter/material.dart';

class Enter extends StatefulWidget {
  @override
  _EnterState createState() => _EnterState();
}

class _EnterState extends State<Enter> {

  final titleController = TextEditingController();
  final contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.amber,
        ),
        backgroundColor: Colors.grey[800],
        title: Text(''),
        actions: [
          ElevatedButton(
            onPressed: () { Navigator.pop(context); },
            child: Icon(Icons.delete, color: Colors.amber,),
            style: ElevatedButton.styleFrom(primary: Colors.grey[800],),
          ),
          ElevatedButton(
            onPressed: () { Navigator.pop(context); },
            child: Icon(Icons.done, color: Colors.amber,),
            style: ElevatedButton.styleFrom(primary: Colors.grey[800],),
          ),
        ],
      ),
      body: Column(
          children: [
            Theme(
              data: ThemeData(
               primaryColor: Colors.amber[500],
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(5, 2, 5, 0),
                child: TextField(
                  style: TextStyle(
                    fontSize: 27,
                  ),
                  autofocus: true,
                  maxLength: 25,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    hintText: 'Title',
                  ),
                  controller: titleController,
                ),
              ),
            ),
            Theme(
              data: ThemeData(
                primaryColor: Colors.blue[800],
              ),
              child: Container(
                height: 500,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
                  child: TextField(
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    keyboardType: TextInputType.multiline,
                    minLines: 15,
                    maxLines: null,
                    decoration: InputDecoration(
                      //floatingLabelBehavior: FloatingLabelBehavior.never,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      hintText: 'Content',
                      alignLabelWithHint: true,
                    ),
                    controller: contentController,
                  ),
                ),
              ),
            )
          ],
      ),
    );
  }
}
