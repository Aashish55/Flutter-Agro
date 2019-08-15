import 'package:flutter/material.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About Us',
          style: new TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        elevation: 5,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 20.0),
              ),
              Text(
                'WELCOME TO GURAYA AGRO',
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'We love to bring our ice cream cart to special events of any size. You pick the flavors and the location, and we provide everything else! With our attractive mobile ice cream carts and delicious cake squares, we can serve to small groups or hundreds of people. We work with companies, schools, churches, student organizations, neighborhood associations and more. We would love to serve to your group! Since the needs and specifics of each event are unique, we would like to work with you directly to plan your individual event.',
                  style: new TextStyle(
                      color: Colors.black45,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  textDirection: TextDirection.ltr,
                  children: <Widget>[
                    Image.asset(
                      'assets/logo1.png',
                      height: 70.0,
                      width: 120.0,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                          Icons.home,
                          size: 25.0,
                          color: Colors.redAccent,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 8.0),
                        ),
                        Text(
                          'Address: ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 25.0,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Text(
                      'Pepsicola Townplanning, Kathmandu-32,Nepal ',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 15.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 15.0),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                          Icons.call,
                          size: 25.0,
                          color: Colors.green,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 8.0),
                        ),
                        Text(
                          'Call Us: ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 25.0,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Text(
                      '+977-9860479694 ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 15.0,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 15.0),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                          Icons.email,
                          size: 25.0,
                          color: Colors.orange,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 8.0),
                        ),
                        Text(
                          'Email: ',
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 25.0,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    
                    Text(
                      'info@resofttech.com',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 15.0,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 15.0),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
