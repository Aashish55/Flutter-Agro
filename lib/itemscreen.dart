import 'package:agro_fresh/description.dart';
import 'package:flutter/material.dart';
import 'cartpage.dart';
import 'description.dart';

class ItemScreen extends StatefulWidget {
  @override
  _ItemScreenState createState() => _ItemScreenState();
}
int counter=0;
Color addButtonActiveColor = Colors.red.shade500;

class _ItemScreenState extends State<ItemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fruits',
          style: new TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.redAccent,
      ),
      backgroundColor: Color(0xffe5e5e5),
      body: SingleChildScrollView(
        child: Container(
            child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                itemCard('assets/apple.jpg', 'Apple', 50, context),
                itemCard('assets/banana.jpg', 'Banana', 90, context)
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                itemCard('assets/lemons.jpg', 'Lemon', 20, context),
                itemCard('assets/kiwi.jpg', 'Kiwi', 200, context)
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                itemCard('assets/grapes.jpg', 'Grapes', 150, context),
                itemCard('assets/pineapple.jpg', 'Pineapple', 190, context),
              ],
            ),
          ],
        )),
      ),
    );
  }
}

Widget itemCard(imagename, itmname, itmprice, context) {
  return SafeArea(
      top: false,
      bottom: false,
      child: Container(
          height: 250.0,
          width: MediaQuery.of(context).size.width/2,
          padding: const EdgeInsets.all(2.0),
          child: GestureDetector(
            onTap: () {
              desc(imagename,itmname,itmprice);
              print('$imagename'+ ' $itmname'+' $itmprice');
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Description()));
            },
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 150.0,
                    child: Stack(
                      children: <Widget>[
                        Positioned.fill(
                          child: Image.asset(
                            imagename,
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          child: IconButton(
                              icon: const Icon(
                                Icons.favorite_border,
                                color: Colors.red,
                              ),
                              onPressed: () {}),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            itmname,
                            style: TextStyle(color: Colors.black54),
                          ),
                          Text(
                            'Rs :' + ' $itmprice',
                            style: TextStyle(color: Colors.black45),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Builder(
                    builder: (context) => Container(
                      alignment: Alignment.center,
                      child: OutlineButton(
                          borderSide: BorderSide(color: Colors.red.shade500),
                          child: const Text('Add'),
                          textColor: addButtonActiveColor,
                          onPressed: () {
                            itemList.add(Item(
                                itemImage: imagename,
                                itemName: itmname,
                                itemQun: 1,
                                itemPrice: itmprice,
                                finalPrice: itmprice));
                                counter=itemList.length;
                            final snackBar = SnackBar(
                              content: Text('Product added successfully!'),
                              action: SnackBarAction(
                                label: 'Check Cart',
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (ctx)=>CartScreen()));
                                },
                              ),
                            );
                            Scaffold.of(context).showSnackBar(snackBar);
                          },
                          shape: new OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          )),
                    ),
                  ),
                ],
              ),
            ),
          )));
}
