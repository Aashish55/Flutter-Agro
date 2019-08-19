import 'package:flutter/material.dart';
import 'cartpage.dart';
import 'itemscreen.dart';

class Description extends StatefulWidget {
  _DescriptionState createState() => _DescriptionState();
}

String imagename;
String name;
int itemprice;
void desc(itemImage, itemName, itemPrice) {
  imagename = itemImage;
  name = itemName;
  itemprice = itemPrice;
}

class _DescriptionState extends State<Description> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text(
          'Description',
          style: new TextStyle(
            color: Colors.white,
            fontSize: 24.0,
          ),
        ),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            ClipPath(
              clipper: WaveClipper2(),
              child: Container(
                child: Column(),
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0x22ff3a5a), Color(0x22fe494d)])),
              ),
            ),
            ClipPath(
              clipper: WaveClipper3(),
              child: Container(
                child: Column(),
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0x44ff3a5a), Color(0x44fe494d)])),
              ),
            ),
            ClipPath(
              clipper: WaveClipper1(),
              child: Container(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: CircleAvatar(
                        foregroundColor: Colors.red,
                        backgroundImage: ExactAssetImage('$imagename'),
                        minRadius: 45,
                        maxRadius: 90,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 60.0),
                    ),
                  ],
                ),
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.redAccent, Color(0xfffe494d)])),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 235.0),
                ),
                Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(bottom: 20.0, right: 90.0),
                      child: Text(
                        '$name',
                        style: TextStyle(
                            fontSize: 26.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                            child: Row(
                          children: <Widget>[
                            SizedBox(
                              width: 20.0,
                            ),
                            Icon(Icons.star, color: Colors.redAccent),
                            Icon(Icons.star, color: Colors.redAccent),
                            Icon(Icons.star, color: Colors.redAccent),
                            Icon(Icons.star, color: Colors.redAccent),
                            Icon(Icons.star, color: Colors.redAccent),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text("(5.0 stars)",
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 14.0))
                          ],
                        )),
                        Text('Rs :' + ' $itemprice',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 30.0,
                            )),
                        SizedBox(
                          width: 20.0,
                        ),
                      ],
                    ),
                    Divider(),
                    Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10.0),
                        child: Text("Description",
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.black54))),
                    Container(
                      padding: EdgeInsets.only(
                          left: 20.0, right: 20.0, bottom: 10.0),
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dignissim erat in accumsan tempus. Mauris congue luctus neque, in semper purus maximus iaculis. Donec et eleifend quam, a sollicitudin magna.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(color: Colors.grey.shade600),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 23.0),
                    ),
                    Builder(
                      builder: (context) => Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Container(
                            alignment: Alignment.center,
                            child: OutlineButton(
                                borderSide:
                                    BorderSide(color: Colors.red.shade500),
                                child: const Text(
                                  'Add to Cart',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                  ),
                                ),
                                textColor: Colors.redAccent,
                                onPressed: () {
                                  itemList.add(Item(
                                      itemImage: imagename,
                                      itemName: name,
                                      itemQun: 1,
                                      itemPrice: itemprice,
                                      finalPrice: itemprice));
                                  counter++;
                                  final snackBar = SnackBar(
                                    content:
                                        Text('Product added successfully!'),
                                    action: SnackBarAction(
                                      label: 'Check Cart',
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (ctx) =>
                                                    CartScreen()));
                                      },
                                    ),
                                  );
                                  Scaffold.of(context).showSnackBar(snackBar);
                                },
                                shape: new OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                )),
                          ),
                          SizedBox(
                            width: 50.0,
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: OutlineButton(
                                borderSide: BorderSide(color: Colors.black54),
                                child: const Text(
                                  'Back to Shop',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                  ),
                                ),
                                textColor: Colors.black54,
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                shape: new OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class WaveClipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height - 50);

    var firstEndPoint = Offset(size.width * 0.6, size.height - 29 - 50);
    var firstControlPoint = Offset(size.width * .25, size.height - 60 - 50);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondEndPoint = Offset(size.width, size.height - 60);
    var secondControlPoint = Offset(size.width * 0.84, size.height - 50);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class WaveClipper3 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height - 50);

    var firstEndPoint = Offset(size.width * 0.6, size.height - 15 - 50);
    var firstControlPoint = Offset(size.width * .25, size.height - 60 - 50);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondEndPoint = Offset(size.width, size.height - 40);
    var secondControlPoint = Offset(size.width * 0.84, size.height - 30);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class WaveClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height - 50);

    var firstEndPoint = Offset(size.width * .7, size.height - 40);
    var firstControlPoint = Offset(size.width * .25, size.height);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondEndPoint = Offset(size.width, size.height - 45);
    var secondControlPoint = Offset(size.width * 0.84, size.height - 50);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
