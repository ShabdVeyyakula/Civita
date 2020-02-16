void showAddPrizesSheet() {
      showModalBottomSheet(
          context: context,
          clipBehavior: Clip.hardEdge,
          isDismissible: true,
          isScrollControlled: true,
          builder: (context) {
            return StatefulBuilder(
              builder: (BuildContext context, StateSetter setter) {
                return KeyboardAvoider(
                  autoScroll: false,
                  curve: Curves.fastLinearToSlowEaseIn,
                  child: Container(
                    color: Color(0xFF737373),
                    child: Container(
                      height: 450,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30)),
                      ),
                      child: ListView(
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        padding: EdgeInsets.only(bottom: 150),
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Placeholder(
                                fallbackHeight: 5,
                                color: Colors.transparent,
                              ),
                              Container(
                                height: 10,
                                width: 50,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(30)),
                                padding: EdgeInsets.only(top: 10, bottom: 10),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 10),
                                child: Text(
                                  "Add Hackathon Prize",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 30),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Prize",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 15),
                                ),
                              ),
                              Container(
                                height: 80,
                                //width: 400,
                                padding: EdgeInsets.only(
                                    left: 30, right: 30, bottom: 20),
                                child: TextField(
                                  maxLength: 20,
                                  controller: prizeController,
                                  decoration: InputDecoration(
                                    //labelText: "Prize",
                                    hintText: "Ex. Nintendo Switch",
                                    suffixIcon: Icon(
                                      Icons.monetization_on,
                                      color: Colors.deepPurple,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 30),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Prize Place",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 15),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    left: 30, right: 30, bottom: 50),
                                child: TextField(
                                  controller: prizePlaceController,
                                  decoration: InputDecoration(
                                      //labelText: "Prize Place",
                                      hintText: "Ex. 1st, 2nd, or N/A",
                                      suffixIcon: Icon(
                                        Icons.format_list_numbered,
                                        color: Colors.deepPurple,
                                      )),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 30),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Prize Description",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 15),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                  left: 30,
                                  right: 30,
                                ),
                                child: TextField(
                                  controller: prizeDescriptionController,
                                  decoration: InputDecoration(
                                      hintText: "Ex. Best Hard Ware Hack",
                                      suffixIcon: Icon(
                                        Icons.description,
                                        color: Colors.deepPurple,
                                      )),
                                ),
                              ),
                              Placeholder(
                                fallbackHeight: 30,
                                color: Colors.transparent,
                              ),
                              SizedBox(height: 50,
                                width: 300,
                                child: RaisedButton(
                                  color: Colors.deepPurple,
                                  textColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      prizesData.add([
                                        prizeController.text,
                                        prizePlaceController.text,
                                        prizeDescriptionController.text
                                      ]);
                                    });
                                    print(prizesData.toString());
                                    Navigator.pop(context);
                                  },

                                  child: Text("Add Prize"),
                                ),
                              ),

                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          });
    }
