import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';


//Main Run Function
void main() => runApp(MaterialApp(home: AtendeeSchedualScreen()));

class AtendeeSchedualScreen extends StatefulWidget {
  @override
  AtendeeSchedualScreenState createState() => AtendeeSchedualScreenState();
}

class AtendeeSchedualScreenState extends State<AtendeeSchedualScreen> {
  @override

  CalendarController _controller;

  @override
  void initState() {
    super.initState();
    _controller = CalendarController();
  }

  

  //Global Variables

  List schedualData = [
    [
      "John Doe",
      "8:00 am",
      "John Doe will be leading a workshop on \n web development",
      "WorkShop"
    ],

    ["Shabd Veyyakula", "7:00 am", "He will teach you ablut app development", "workshop"],
        ["Shabd Veyyakula", "7:00 am", "He will teach you ablut app development", "workshop"]

    
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green.shade100,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
          elevation: 0,
          centerTitle: true,
          title: Text("Good Morning, Shabd"),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Container(
                height: 273,
                color: Colors.green.shade100,
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          width: 20,
                        ),
                                   
                        Container( 
                          width: 10,
                        ),

                        Center(
                          child: SizedBox(
                            height: 240,
                            width: 350,
                            
                            child: Container(

                            height: 270,
                            width: 260,

                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.grey.shade100),


                            

                            child: TableCalendar(calendarController: _controller,
                            initialCalendarFormat: CalendarFormat.week,
                            calendarStyle: CalendarStyle(todayColor: Colors.purple.shade200, selectedColor: Colors.green.shade200),
                            
                            ),


                            ),),
                        )
                        
                      
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: 15,
              ),
              Container(
                height: 450,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    itemCount: schedualData.length,
                    itemBuilder: (context, int index) {
                      return Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Container(
                                width: 30,
                              ),
                              Column(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Container(
                                        width: 16,
                                        height: 16,
                                        decoration: BoxDecoration(
                                            color: Colors.transparent,
                                            borderRadius:
                                                BorderRadius.circular(360),
                                            border: Border.all(
                                                color: Colors.deepPurple)),
                                      ),
                                      Container(width: 10),
                                      Padding(
                                        padding: EdgeInsets.only(right: 260),
                                        child: Text(
                                          schedualData[index][1],
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      )
                                    ],
                                  ),
                                  Container(
                                    height: 15,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(left: 10),
                                        child: Container(
                                          height: 130,
                                          child: VerticalDivider(
                                            color: Colors.grey,
                                            thickness: 1,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 30,
                                      ),
                                      Container(
                                        child: Column(
                                          children: <Widget>[
                                            Container(height: 30,),
                                            Row(
                                              children: <Widget>[
                                                Container(width: 10,),
                                                Container(
                                                  alignment: Alignment.centerLeft,
                                                  child: Text(
                                                    schedualData[index][0],
                                                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Container(height: 25,),
                                            Row(
                                              children: <Widget>[
                                                
                                                Text(
                                                  schedualData[index][2]
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        height: 120,
                                        width: 300,
                                        decoration: BoxDecoration(
                                            color: Colors.grey.shade100,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                          Container(height: 20,)
                        ],
                        
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
