import 'package:agro_fresh/cartpage.dart';
import 'package:agro_fresh/itemscreen.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/widgets.dart';
import 'about.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(
                children: <Widget>[
                  Image.asset(
                    'assets/logo1.png',
                    height: 100.0,
                    width: 150.0,
                  ),
                  Text(
                    'Agro Fresh',
                    style: TextStyle(color: Colors.black54, fontSize: 30.0),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Color(0xffe1e1e1),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Dashboard'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text('My Cart'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (ctx)=>CartScreen()));
              },
            ),
            ListTile(
              leading: Icon(Icons.category),
              title: Text('Categories'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.surround_sound),
              title: Text('Broadcasts'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.share),
              title: Text('Share'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('About Us'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (ctx) => About()));
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: _searchAppBar(context),
        backgroundColor: Colors.redAccent,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              tooltip: 'Open shopping cart',
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => CartScreen()));
              }),
          Padding(
            padding: EdgeInsets.only(right: 10.0),
          ),
          Icon(Icons.notifications, color: Colors.white, size: 30),
          Padding(
            padding: EdgeInsets.only(right: 10.0),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Stack(
                  children: <Widget>[
                    SizedBox(
                      height: 170.0,
                      width: 360.0,
                      child: Carousel(
                        boxFit: BoxFit.cover,
                        autoplay: true,
                        autoplayDuration: const Duration(seconds: 3),
                        animationCurve: Curves.fastOutSlowIn,
                        animationDuration: Duration(milliseconds: 1000),
                        dotSize: 6.0,
                        dotIncreasedColor: Color(0xFF22a6b3),
                        dotBgColor: Colors.transparent,
                        dotPosition: DotPosition.bottomCenter,
                        dotVerticalPadding: 10.0,
                        showIndicator: true,
                        indicatorBgPadding: 7.0,
                        images: [
                          AssetImage(
                            'assets/slider1.jpg',
                          ),
                          AssetImage('assets/slider3.jpg'),
                          AssetImage('assets/slider2.jpg'),
                          AssetImage('assets/veg.jpg')
                        ],
                      ),
                    ),
                    Center(
                        child: Padding(
                      padding: const EdgeInsets.only(top: 38.0),
                      child: Column(
                        children: <Widget>[
                          Text('Guraya Fresh Fruits',
                              style: TextStyle(
                                  color: Color(0xffc7ecee),
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.w700)),
                          Padding(
                            padding: EdgeInsets.only(top: 20.0),
                          ),
                          FlatButton(
                            child: Text(
                              'Shop Now',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            color: Colors.white.withOpacity(0.65),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (ctx) => ItemScreen()));
                            },
                          )
                        ],
                      ),
                    )),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: 5.0,
                ),
              ),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.97,
                  child: FlatButton(
                    splashColor: Colors.white,
                    color: Color(0xff2ed573),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Image.asset(
                          'assets/Vegetable-Transparent.png',
                          height: 100.0,
                          width: 100.0,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          'Vegetables',
                          style: TextStyle(
                            fontSize: 35.0,
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (ctx) => ItemScreen()));
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 5.0),
              ),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.97,
                  child: FlatButton(
                    splashColor: Colors.white,
                    color: Color(0xff63cdda),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(
                          'Fruits',
                          style: TextStyle(
                            fontSize: 35.0,
                            color: Colors.white70,
                          ),
                        ),
                        Image.asset(
                          'assets/Fruit-Transparent.png',
                          height: 100.0,
                          width: 100.0,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (ctx) => ItemScreen()));
                    },
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 16.0, bottom: 12.0),
              //   child: Text(
              //     'Menu',
              //     style: TextStyle(
              //       color: Colors.black54,
              //       fontWeight: FontWeight.w700,
              //       fontSize: 18.0,
              //     ),
              //   ),
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceAround,
              //   children: <Widget>[
              //     _menuItems(Icons.camera, 0xffffbe76, 'Featured'),
              //     _menuItems(Icons.file_download, 0xff686de0, 'Cheap'),
              //     _menuItems(Icons.feedback, 0xffeb4d4b, 'Expensive'),
              //     _menuItems(Icons.fiber_new, 0xffbe2edd, 'Apple'),
              //   ],
              // ),
              // Padding(
              //   padding: EdgeInsets.only(top: 10.0),
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceAround,
              //   children: <Widget>[
              //     _menuItems(Icons.mail, 0xff009432, 'Banana'),
              //     _menuItems(Icons.phone, 0xffED4C67, 'Cakes'),
              //     _menuItems(Icons.lock, 0xffFFC312, 'FruitCakes'),
              //     _menuItems(Icons.notifications, 0xff12CBC4, 'Kulfis'),
              //   ],
              // ),
              // Padding(
              //   padding: EdgeInsets.only(top: 10.0),
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceAround,
              //   children: <Widget>[
              //     _menuItems(Icons.home, 0xff833471, "Drinks"),
              //     _menuItems(Icons.hourglass_empty, 0xffEE5A24, 'Guavas'),
              //     _menuItems(Icons.attach_money, 0xff1B1464, 'Litchi'),
              //     _menuItems(Icons.battery_alert, 0xff5758BB, 'Grapes'),
              //   ],
              // ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: 20.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16.0,
                ),
                child: Text(
                  'Recomended',
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w700,
                    fontSize: 18.0,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20.0),
                height: 240.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      width: 160.0,
                      child: FlatButton(
                        splashColor: Colors.redAccent,
                        color: Color(0xffe5e5e5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        ),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(top: 7.0),
                            ),
                            Image.asset(
                              'assets/apple.jpg',
                              height: 160.0,
                              width: 160.0,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              'Apple',
                              style: TextStyle(
                                fontSize: 25.0,
                                color: Colors.black54,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Icon(Icons.star, color: Colors.red),
                                Icon(Icons.star, color: Colors.red),
                                Icon(Icons.star, color: Colors.red),
                                Icon(Icons.star, color: Colors.red),
                                Icon(Icons.star_border, color: Colors.red),
                              ],
                            ),
                            Text(
                              'Rs 130.0',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.black54,
                              ),
                            )
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) => ItemScreen()));
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 7.0),
                    ),
                    Container(
                      child: FlatButton(
                        splashColor: Colors.redAccent,
                        color: Color(0xffe5e5e5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        ),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(top: 7.0),
                            ),
                            Image.asset(
                              'assets/banana.jpg',
                              height: 160.0,
                              width: 160.0,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              'Banana',
                              style: TextStyle(
                                fontSize: 25.0,
                                color: Colors.black54,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Icon(Icons.star, color: Colors.red),
                                Icon(Icons.star, color: Colors.red),
                                Icon(Icons.star, color: Colors.red),
                                Icon(Icons.star_border, color: Colors.red),
                                Icon(Icons.star_border, color: Colors.red),
                              ],
                            ),
                            Text(
                              'Rs 100.0',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.black54,
                              ),
                            )
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) => ItemScreen()));
                        },
                      ),
                      width: 160.0,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 7.0),
                    ),
                    Container(
                      child: FlatButton(
                        splashColor: Colors.redAccent,
                        color: Color(0xffe5e5e5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        ),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(top: 7.0),
                            ),
                            Image.asset(
                              'assets/cake.jpg',
                              height: 160.0,
                              width: 160.0,
                              fit: BoxFit.cover,
                              colorBlendMode: BlendMode.colorDodge,
                            ),
                            Text(
                              'Cake',
                              style: TextStyle(
                                fontSize: 25.0,
                                color: Colors.black54,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Icon(Icons.star, color: Colors.red),
                                Icon(Icons.star, color: Colors.red),
                                Icon(Icons.star, color: Colors.red),
                                Icon(Icons.star, color: Colors.red),
                                Icon(Icons.star_border, color: Colors.red),
                              ],
                            ),
                            Text(
                              'Rs 450.0',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.black54,
                              ),
                            )
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) => ItemScreen()));
                        },
                      ),
                      width: 160.0,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 7.0),
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

Widget _menuItems(icon, color, heading) {
  return Container(
    child: Column(
      children: <Widget>[
        Icon(
          icon,
          size: 25.0,
          color: Color(color),
        ),
        Text('$heading',
            style:
                TextStyle(color: Colors.black54, fontWeight: FontWeight.w600))
      ],
    ),
  );
}

Widget _searchAppBar(context) {
  return Card(
    color: Colors.white70,
    elevation: 5.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(7.0)),
    ),
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.grey,
                border: InputBorder.none,
                hintText: 'Search Products',
              ),
            ),
          ),
          GestureDetector(
            child: Icon(
              Icons.search,
              color: Colors.grey,
            ),
            onTap: () {},
          ),
        ],
      ),
    ),
  );
}
