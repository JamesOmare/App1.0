import "package:flutter/material.dart";

class NoteModify extends StatelessWidget {

  final String? noteID;

  bool get isEditing => noteID != null;

  NoteModify({this.noteID});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(isEditing ? 'Edit note' : 'Create Note')),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
      child: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              hintText: "Note title"
            ),
          ),

          Container(height: 8),

          TextField(
            decoration: InputDecoration(
              hintText: "Note content"
            ),
          ),

          Container(height: 16),

          SizedBox(
            width: double.infinity,
            child: RaisedButton(
              child: Text('Submit', style: TextStyle(color: Colors.white)),
              color: Theme.of(context).primaryColor,
              onPressed: (){
                // if(isEditing)
                // {
                //     //update note in api
                // }
                // else{
                //     // create note in api
                // }
                Navigator.of(context).pop();
              },
            ),
          )


        ],
      ),
    ),
      
    );
  }
}