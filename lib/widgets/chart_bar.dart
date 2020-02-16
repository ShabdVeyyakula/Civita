import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String imageUrl;
  final int hoursCompleted;
  final int hoursTotal;
  final String name;

  ChartBar(this.imageUrl, this.hoursCompleted, this.hoursTotal, this.name);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 40,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    Stack(
                      children: <Widget>[
                        Container(
                          height: 20,
                          width: (MediaQuery.of(context).size.width) - 20,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Stack(
                            children: <Widget>[
                              FractionallySizedBox(
                                widthFactor: (hoursCompleted / hoursTotal),
                                //will be chores completed / total chores across the board
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(119, 221, 119, 1),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: (MediaQuery.of(context).size.width) - 40,
                height: 60,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
