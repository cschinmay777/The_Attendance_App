import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:swiping_card_deck/swiping_card_deck.dart';
import 'package:the_attendance_book_1/screens/developers_page.dart';

class Developer_Card extends StatefulWidget {
  const Developer_Card({Key? key}) : super(key: key);

  @override
  State<Developer_Card> createState() => _Developer_CardState();
}

class _Developer_CardState extends State<Developer_Card> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("DEVELOPERS"),
        backgroundColor: Colors.indigo,
        centerTitle: true,
      ),
      body: SwipingCardDeck(
        cardDeck: <Card>[
          Card(
            color: Colors.white,
            shadowColor: Colors.grey,
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.indigo, width: 5.0)),
              height: 550,
              width: 400,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                    child: CircleAvatar(
                      backgroundColor: Colors.indigo,
                      radius: 115,
                      child: CircleAvatar(
                        radius: 110,
                        backgroundImage: AssetImage('images/chinmay.jpeg'),
                      ),
                    ),
                  ),
                  Container(
                    //color: Colors.grey,
                    height: 60,
                    margin: EdgeInsets.fromLTRB(10, 30, 10, 10),
                    child: Center(
                      child: Text(
                        'Chinmay Choudhary',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    //color: Colors.grey,
                    height: 30,
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Center(
                      child: Text(
                        'Computer Department',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    //color: Colors.grey,
                    height: 30,
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Center(
                      child: Text(
                        'More info:',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            //fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        //color: Colors.grey,
                        width: 50,
                        height: 50,
                        margin: EdgeInsets.fromLTRB(0, 0, 10, 10),
                        child: IconButton(
                            icon: FaIcon(FontAwesomeIcons.linkedin),
                            iconSize: 50,
                            color: Colors.indigo,
                            hoverColor: Colors.black54,
                            onPressed: () {
                              // Navigator.push(context,
                              // MaterialPageRoute(builder: (context) {
                              // return ;
                            }),
                      ),
                      Container(
                        //color: Colors.grey,
                        width: 50,
                        height: 50,
                        margin: EdgeInsets.fromLTRB(30, 0, 10, 10),
                        child: IconButton(
                            icon: FaIcon(FontAwesomeIcons.github),
                            iconSize: 50,
                            color: Colors.indigo,
                            hoverColor: Colors.black54,
                            onPressed: () {
                              // Navigator.push(context,
                              // MaterialPageRoute(builder: (context) {
                              // return ;
                            }),
                      ),
                      Container(
                        //color: Colors.grey,
                        width: 50,
                        height: 50,
                        margin: EdgeInsets.fromLTRB(30, 0, 10, 10),
                        child: IconButton(
                            icon: FaIcon(FontAwesomeIcons.instagram),
                            iconSize: 50,
                            color: Colors.indigo,
                            hoverColor: Colors.black54,
                            onPressed: () {
                              // Navigator.push(context,
                              // MaterialPageRoute(builder: (context) {
                              // return ;
                            }),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Card(
            color: Colors.white,
            shadowColor: Colors.grey,
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.indigo, width: 5.0)),
              height: 550,
              width: 400,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                    child: CircleAvatar(
                      backgroundColor: Colors.indigo,
                      radius: 115,
                      child: CircleAvatar(
                        radius: 110,
                        backgroundImage: AssetImage('images/vinayaki.jpeg'),
                      ),
                    ),
                  ),
                  Container(
                    //color: Colors.grey,
                    height: 60,
                    margin: EdgeInsets.fromLTRB(10, 30, 10, 10),
                    child: Center(
                      child: Text(
                        'Vinayaki Dalvi',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    //color: Colors.grey,
                    height: 30,
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Center(
                      child: Text(
                        'Computer Department',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    //color: Colors.grey,
                    height: 30,
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Center(
                      child: Text(
                        'More info:',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            //fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        //color: Colors.grey,
                        width: 50,
                        height: 50,
                        margin: EdgeInsets.fromLTRB(0, 0, 10, 10),
                        child: IconButton(
                            icon: FaIcon(FontAwesomeIcons.linkedin),
                            iconSize: 50,
                            color: Colors.indigo,
                            hoverColor: Colors.black54,
                            onPressed: () {
                              // Navigator.push(context,
                              // MaterialPageRoute(builder: (context) {
                              // return ;
                            }),
                      ),
                      Container(
                        //color: Colors.grey,
                        width: 50,
                        height: 50,
                        margin: EdgeInsets.fromLTRB(30, 0, 10, 10),
                        child: IconButton(
                            icon: FaIcon(FontAwesomeIcons.github),
                            iconSize: 50,
                            color: Colors.indigo,
                            hoverColor: Colors.black54,
                            onPressed: () {
                              // Navigator.push(context,
                              // MaterialPageRoute(builder: (context) {
                              // return ;
                            }),
                      ),
                      Container(
                        //color: Colors.grey,
                        width: 50,
                        height: 50,
                        margin: EdgeInsets.fromLTRB(30, 0, 10, 10),
                        child: IconButton(
                            icon: FaIcon(FontAwesomeIcons.instagram),
                            iconSize: 50,
                            color: Colors.indigo,
                            hoverColor: Colors.black54,
                            onPressed: () {
                              // Navigator.push(context,
                              // MaterialPageRoute(builder: (context) {
                              // return ;
                            }),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Card(
            color: Colors.white,
            shadowColor: Colors.grey,
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.indigo, width: 5.0)),
              height: 550,
              width: 400,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                    child: CircleAvatar(
                      backgroundColor: Colors.indigo,
                      radius: 115,
                      child: CircleAvatar(
                        radius: 110,
                        backgroundImage: AssetImage('images/rohit.jpeg'),
                      ),
                    ),
                  ),
                  Container(
                    //color: Colors.grey,
                    height: 60,
                    margin: EdgeInsets.fromLTRB(10, 30, 10, 10),
                    child: Center(
                      child: Text(
                        'Rohit Gadekar',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    //color: Colors.grey,
                    height: 30,
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Center(
                      child: Text(
                        'Computer Department',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    //color: Colors.grey,
                    height: 30,
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Center(
                      child: Text(
                        'More info:',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            //fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        //color: Colors.grey,
                        width: 50,
                        height: 50,
                        margin: EdgeInsets.fromLTRB(0, 0, 10, 10),
                        child: IconButton(
                            icon: FaIcon(FontAwesomeIcons.linkedin),
                            iconSize: 50,
                            color: Colors.indigo,
                            hoverColor: Colors.black54,
                            onPressed: () {
                              // Navigator.push(context,
                              // MaterialPageRoute(builder: (context) {
                              // return ;
                            }),
                      ),
                      Container(
                        //color: Colors.grey,
                        width: 50,
                        height: 50,
                        margin: EdgeInsets.fromLTRB(30, 0, 10, 10),
                        child: IconButton(
                            icon: FaIcon(FontAwesomeIcons.github),
                            iconSize: 50,
                            color: Colors.indigo,
                            hoverColor: Colors.black54,
                            onPressed: () {
                              // Navigator.push(context,
                              // MaterialPageRoute(builder: (context) {
                              // return ;
                            }),
                      ),
                      Container(
                        //color: Colors.grey,
                        width: 50,
                        height: 50,
                        margin: EdgeInsets.fromLTRB(30, 0, 10, 10),
                        child: IconButton(
                            icon: FaIcon(FontAwesomeIcons.instagram),
                            iconSize: 50,
                            color: Colors.indigo,
                            hoverColor: Colors.black54,
                            onPressed: () {
                              // Navigator.push(context,
                              // MaterialPageRoute(builder: (context) {
                              // return ;
                            }),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Card(
            color: Colors.white,
            shadowColor: Colors.grey,
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.indigo, width: 5.0)),
              height: 550,
              width: 400,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                    child: CircleAvatar(
                      backgroundColor: Colors.indigo,
                      radius: 115,
                      child: CircleAvatar(
                        radius: 110,
                        backgroundImage: AssetImage('images/soham.jpeg'),
                      ),
                    ),
                  ),
                  Container(
                    //color: Colors.grey,
                    height: 60,
                    margin: EdgeInsets.fromLTRB(10, 30, 10, 10),
                    child: Center(
                      child: Text(
                        'Soham Badjate',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    //color: Colors.grey,
                    height: 30,
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Center(
                      child: Text(
                        'Computer Department',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    //color: Colors.grey,
                    height: 30,
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Center(
                      child: Text(
                        'More info:',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            //fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        //color: Colors.grey,
                        width: 50,
                        height: 50,
                        margin: EdgeInsets.fromLTRB(0, 0, 10, 10),
                        child: IconButton(
                            icon: FaIcon(FontAwesomeIcons.linkedin),
                            iconSize: 50,
                            color: Colors.indigo,
                            hoverColor: Colors.black54,
                            onPressed: () {
                              // Navigator.push(context,
                              // MaterialPageRoute(builder: (context) {
                              // return ;
                            }),
                      ),
                      Container(
                        //color: Colors.grey,
                        width: 50,
                        height: 50,
                        margin: EdgeInsets.fromLTRB(30, 0, 10, 10),
                        child: IconButton(
                            icon: FaIcon(FontAwesomeIcons.github),
                            iconSize: 50,
                            color: Colors.indigo,
                            hoverColor: Colors.black54,
                            onPressed: () {
                              // Navigator.push(context,
                              // MaterialPageRoute(builder: (context) {
                              // return ;
                            }),
                      ),
                      Container(
                        //color: Colors.grey,
                        width: 50,
                        height: 50,
                        margin: EdgeInsets.fromLTRB(30, 0, 10, 10),
                        child: IconButton(
                            icon: FaIcon(FontAwesomeIcons.instagram),
                            iconSize: 50,
                            color: Colors.indigo,
                            hoverColor: Colors.black54,
                            onPressed: () {
                              // Navigator.push(context,
                              // MaterialPageRoute(builder: (context) {
                              // return ;
                            }),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
        onDeckEmpty: () =>
            Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DeveloperPageWidget();
        })),
        onLeftSwipe: (Card card) => debugPrint("Swiped left!"),
        onRightSwipe: (Card card) => debugPrint("Swiped right!"),
        swipeThreshold: MediaQuery.of(context).size.width / 4,
        minimumVelocity: 1000,
        cardWidth: 200,
        rotationFactor: 0.8 / 3.14,
        swipeAnimationDuration: const Duration(milliseconds: 500),
      ),
    );
  }
}
