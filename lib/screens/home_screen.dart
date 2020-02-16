import 'package:flutter/material.dart';

import '../widgets/chart_bar.dart';
import '../widgets/community_service_offer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Widget _BuildAppBar() {
      return AppBar(
        centerTitle: true,
        elevation: 5,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.more_vert),
        ),
        title: Text(
          'Dashboard',
          style: TextStyle(fontSize: 24, color: Colors.green.shade300),
        ),
      );
    }

    final PreferredSizeWidget appBar = _BuildAppBar();

    return Scaffold(
      appBar: appBar,
      body: Column(
        children: <Widget>[
          Container(
            height: (MediaQuery.of(context).size.height -
                    appBar.preferredSize.height -
                    MediaQuery.of(context).padding.top) *
                0.12,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ChartBar(
                  'https://media.istockphoto.com/vectors/print-vector-id1042305524?k=6&m=1042305524&s=612x612&w=0&h=HyxSO8en9scS5b6xRx8OBXZRgIVemOaI-fDJBMmtBas=',
                  15,
                  40,
                  'Pranav'),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            height: (MediaQuery.of(context).size.height -
                    appBar.preferredSize.height -
                    MediaQuery.of(context).padding.top) *
                0.08,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Text(
                'Community Service Offers',
                style: TextStyle(fontSize: 20, color: Colors.black54),
              ),
            ),
          ),
          Container(
            height: (MediaQuery.of(context).size.height -
                    appBar.preferredSize.height -
                    MediaQuery.of(context).padding.top) *
                0.8,
            child: ListView(
              children: <Widget>[
                CommunityServiceOffer(
                  title: 'Hackathon Club Coding Workshop',
                  imageUrl:
                      'https://thumbs.dreamstime.com/b/isometric-flat-vector-concept-hackathon-hack-marathon-coding-event-app-software-development-153905945.jpg',
                  timeOfEvent: '11:50 am',
                  dateOfEvent: DateTime.now(),
                  provider: 'MHHS',
                ),
                CommunityServiceOffer(
                  title: 'Hackathon Club Coding Workshop',
                  imageUrl:
                      'https://thumbs.dreamstime.com/b/isometric-flat-vector-concept-hackathon-hack-marathon-coding-event-app-software-development-153905945.jpg',
                  timeOfEvent: '11:50 am',
                  dateOfEvent: DateTime.now(),
                  provider: 'MHHS',
                ),
                CommunityServiceOffer(
                  title: 'Hackathon Club Coding Workshop',
                  imageUrl:
                      'https://thumbs.dreamstime.com/b/isometric-flat-vector-concept-hackathon-hack-marathon-coding-event-app-software-development-153905945.jpg',
                  timeOfEvent: '11:50 am',
                  dateOfEvent: DateTime.now(),
                  provider: 'MHHS',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
