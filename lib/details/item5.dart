import 'package:flutter/material.dart';

class Item5 extends StatelessWidget {
  String image1, title;
  Item5(this.image1, this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height - 575.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage('$image1'), fit: BoxFit.cover)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0, top: 45.0),
                  ),
                  Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 25.0, top: 45.0),
                            child: Container(
                              width: 40.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40.0),
                                color: Colors.white,
                              ),
                              child: Center(
                                child: GestureDetector(
                                  onTap: (() {
                                    Navigator.pop(context);
                                  }),
                                  child: Icon(Icons.keyboard_arrow_left,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 25.0, top: 45.0),
                            child: Container(
                              width: 40.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40.0),
                                color: Colors.white,
                              ),
                              child: Center(
                                child:
                                    Icon(Icons.more_horiz, color: Colors.black),
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 120.0),
                        child: Stack(children: <Widget>[
                          Container(
                            height: 120.0,
                            decoration: BoxDecoration(
                                color: Colors.grey[850],
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(40.0),
                                    topRight: Radius.circular(40.0))),
                            child: Center(
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        12.0, 15.0, 12.0, 5.0),
                                    child: Text(title,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Cardo',
                                          fontSize: 24.0,
                                        )),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(Icons.star,
                                          color: Colors.yellow, size: 15.0),
                                      Icon(Icons.star,
                                          color: Colors.yellow, size: 15.0),
                                      Icon(Icons.star,
                                          color: Colors.yellow, size: 15.0),
                                      Icon(Icons.star,
                                          color: Colors.white, size: 15.0),
                                      Icon(Icons.star,
                                          color: Colors.white, size: 15.0),
                                      Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Text('900 reviews',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14.0)),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 90.0),
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 400.0,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(38.0),
                                          topRight: Radius.circular(38.0))),
                                  child: Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Text('DESCRIPTION',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.bold)),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            8.0, 4.0, 8.0, 2.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              "Karanji Lake is a lake located in the city of Mysore in the state of Karnataka, India. The lake is surrounded by a nature park consisting of a butterfly park and a walk-through aviary. This aviary is the biggest 'walk-through aviary' in India. There is also a museum, the Regional Museum of Natural History which is located on the banks of this lake.",
                                              style: TextStyle(fontSize: 15.0),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 20.0),
                                              child: Text('Travel guide',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black,
                                                      fontFamily: 'Cardo',
                                                      fontSize: 24.0)),
                                            )
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: GridView.count(
                                          crossAxisCount: 3,
                                          mainAxisSpacing: 8.0,
                                          crossAxisSpacing: 8.0,
                                          children: <Widget>[
                                            cardWidget(
                                                Icons.home, 'Hotel', '40'),
                                            cardWidget(Icons.ac_unit,
                                                'Attractions', '36'),
                                            cardWidget(Icons.navigation,
                                                'Navigation', '10'),
                                            cardWidget(Icons.comment,
                                                'Comments', '270'),
                                            cardWidget(Icons.photo_library,
                                                'Photos', '1800'),
                                            cardWidget(Icons.flight_takeoff,
                                                'Travel', '199'),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ]),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 100.0,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0))),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Let\'s Go',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0)),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.arrow_forward, color: Colors.white),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget cardWidget(IconData icon, String title, String number) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 8.0,
        child: Container(
          width: 20.0,
          height: 100.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Stack(
                  children: <Widget>[
                    Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                          color: Colors.green[100],
                          borderRadius: BorderRadius.circular(40.0)),
                    ),
                    Positioned(
                      left: 8.0,
                      top: 7.0,
                      child: Material(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(40.0),
                        elevation: 1.0,
                        child: Container(
                          width: 45.0,
                          height: 45.0,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(40.0)),
                          child: Center(
                            child: Icon(icon, color: Colors.teal[900]),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Text(
                title,
                style: TextStyle(color: Colors.black, fontSize: 12.0),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text(
                  number,
                  style: TextStyle(color: Colors.black, fontSize: 12.0),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
