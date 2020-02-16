import 'package:flutter/material.dart';
import '../widgets/pending_request.dart';

class PendingRequestsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 5,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.more_vert),
        ),
        title: Text(
          'Pending Requests',
          style: TextStyle(fontSize: 24, color: Colors.green.shade300),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:13.0,vertical: 18),
            child: Text(
              '1 new request pending',
              style: TextStyle(
                fontSize: 25,
                color: Colors.grey.shade800,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: <Widget>[
                PendingRequest(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
// card with accept or decline
//plofile pic
//number of hours that person has
