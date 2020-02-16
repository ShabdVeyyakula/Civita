import 'package:flutter/material.dart';

class PendingRequest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      elevation: 4,
      child: ListTile(
        leading: CircleAvatar(
          radius: 25,
          backgroundColor: Colors.green,
        ),
        title: Text('Shabd Veyyakula'),
        subtitle: Text('36 Hours'),
        trailing: Container(
          width: 200,
          child: Row(
            children: <Widget>[
              RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100)),
                child: Icon(Icons.check),
                onPressed: () {},
              ),
              SizedBox(
                width: 5,
              ),
              RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100)),
                child: Icon(Icons.delete),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
