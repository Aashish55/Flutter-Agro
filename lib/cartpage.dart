import 'package:flutter/material.dart';
import 'checkoutpage.dart';

enum DialogDemoAction {
  cancel,
  discard,
  disagree,
  agree,
}

class CartScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Cart();
}
// class CartItems{
//   final String cartItemImage;
//   final String cartItemName;
//   final int cartItemQun;
//   final String cartItemPrice;

//   CartItems({this.cartItemImage, this.cartItemName, this.cartItemQun, this.cartItemPrice});
// }
class Item {
  final String itemImage;
  final String itemName;
  int itemQun;
  int itemPrice;
  int finalPrice;

  Item(
      {this.itemImage,
      this.itemName,
      this.itemQun,
      this.itemPrice,
      this.finalPrice});
}

List<Item> itemList = <Item>[];

class Cart extends State<CartScreen> {
  String toolbarname = 'My Cart';
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  String areaName;
  @override
  Widget build(BuildContext context) {
    IconData _add_icon() {
      switch (Theme.of(context).platform) {
        case TargetPlatform.android:
        case TargetPlatform.fuchsia:
          return Icons.add_circle;
        case TargetPlatform.iOS:
          return Icons.add_circle;
      }
      assert(false);
      return null;
    }

    IconData _sub_icon() {
      switch (Theme.of(context).platform) {
        case TargetPlatform.android:
        case TargetPlatform.fuchsia:
          return Icons.remove_circle;
        case TargetPlatform.iOS:
          return Icons.remove_circle;
      }
      assert(false);
      return null;
    }

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    double dd = width * 0.77;
    double hh = height - 215.0;
    int item = 0;
    final ThemeData theme = Theme.of(context);
    final TextStyle dialogTextStyle =
        theme.textTheme.subhead.copyWith(color: theme.textTheme.caption.color);

    return new Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(
          toolbarname,
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.redAccent,
        actions: <Widget>[
          new Padding(
            padding: const EdgeInsets.all(10.0),
            child: new Container(
              height: 150.0,
              width: 30.0,
              child: new GestureDetector(
                onTap: () {
                  /*Navigator.of(context).push(
                  new MaterialPageRoute(
                      builder:(BuildContext context) =>
                      new CartItemsScreen()
                  )
              );*/
                },
                child: Stack(
                  children: <Widget>[
                    new IconButton(
                        icon: new Icon(
                          Icons.home,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => Item_Screen()));
                        }),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      backgroundColor: Color(0xffc5c5c5),
      body: Column(
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(left: 0.0, right: 0.0, bottom: 10.0),
              child: Card(
                  child: Container(
                      padding:
                          const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                      child: GestureDetector(
                          child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          // three line description
                          Row(
                            children: <Widget>[
                              Text(
                                'Area : ',
                                style: TextStyle(
                                  fontSize: 17.0,
                                  fontStyle: FontStyle.normal,
                                  color: Colors.black54,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 2.0),
                              ),
                              GestureDetector(
                                child: Text(
                                  'Panauti',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.underline,
                                      color: Colors.black),
                                ),
                                onTap: () {
                                  showDemoDialog<DialogDemoAction>(
                                      context: context,
                                      child: AlertDialog(
                                          title: const Text('Location'),
                                          content: SizedBox(
                                            height: 24.0,
                                            child: TextFormField(
                                                keyboardType: TextInputType
                                                    .emailAddress, // Use email input type for emails.
                                                decoration: new InputDecoration(
                                                    hintText: '******',
                                                    labelText: 'Location'),
                                                //  validator: this._validateEmail,
                                                onSaved: (String value) {
                                                  this.areaName = value;
                                                }),
                                          ),
                                          actions: <Widget>[
                                            FlatButton(
                                                child: const Text('CANCEL'),
                                                onPressed: () {
                                                  Navigator.pop(
                                                      context,
                                                      DialogDemoAction
                                                          .disagree);
                                                }),
                                            FlatButton(
                                                child: const Text('SAVE'),
                                                onPressed: () {
                                                  Navigator.pop(context,
                                                      DialogDemoAction.agree);
                                                })
                                          ]));
                                },
                              )
                            ],
                          ),
                        ],
                      ))))),
          Container(
              margin: EdgeInsets.only(
                  left: 12.0, top: 5.0, right: 12.0, bottom: 10.0),
              height: hh,
              child: ListView.builder(
                  itemCount: itemList.length,
                  itemBuilder: (BuildContext context, int ind) {
                    return SafeArea(
                        child: Container(
                      alignment: Alignment.topLeft,
                      child: Column(
                        children: <Widget>[
                          Container(
                              alignment: Alignment.topLeft,
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    height: 120.0,
                                    width: dd - 20.0,
                                    child: Card(
                                      child: Row(
                                        children: <Widget>[
                                          SizedBox(
                                              height: 110.0,
                                              width: 100.0,
                                              child: Image.asset(
                                                itemList[ind].itemImage,
                                                fit: BoxFit.fill,
                                              )),
                                          SizedBox(
                                              height: 110.0,
                                              child: Container(
                                                alignment: Alignment.topLeft,
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: <Widget>[
                                                    _verticalD(),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: <Widget>[
                                                        Text(
                                                          itemList[ind]
                                                              .itemName,
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 18.0,
                                                              color:
                                                                  Colors.black),
                                                        ),
                                                      ],
                                                    ),
                                                    _verticalD(),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: <Widget>[
                                                        Text(
                                                          'Rs :' +
                                                              itemList[ind]
                                                                  .itemPrice
                                                                  .toString(),
                                                          style: TextStyle(
                                                              fontSize: 15.0,
                                                              color: Colors
                                                                  .black54),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: <Widget>[
                                                        new IconButton(
                                                          icon: Icon(
                                                              _add_icon(),
                                                              color: Colors.red
                                                                  .shade500),
                                                          onPressed: () {
                                                            setState(() {
                                                              itemList[ind]
                                                                  .itemQun++;
                                                              itemList[ind]
                                                                  .finalPrice = itemList[
                                                                          ind]
                                                                      .itemQun *
                                                                  itemList[ind]
                                                                      .itemPrice;
                                                            });
                                                          },
                                                        ),
                                                        Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 2.0),
                                                        ),
                                                        Text(
                                                          itemList[ind]
                                                              .itemQun
                                                              .toString(),
                                                        ),
                                                        Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                                  right: 2.0),
                                                        ),
                                                        new IconButton(
                                                          icon: Icon(
                                                              _sub_icon(),
                                                              color: Colors.red
                                                                  .shade500),
                                                          onPressed: () {
                                                            if (itemList[ind]
                                                                    .itemQun <=
                                                                1) {
                                                              setState(() {
                                                                itemList.remove(
                                                                    itemList[
                                                                        ind]);
                                                              });
                                                            } else {
                                                              setState(() {
                                                                itemList[ind]
                                                                    .itemQun--;
                                                                itemList[ind]
                                                                    .finalPrice = itemList[
                                                                            ind]
                                                                        .itemQun *
                                                                    itemList[
                                                                            ind]
                                                                        .itemPrice;
                                                              });
                                                            }
                                                          },
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ))
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                      height: 110.0,
                                      width: 75.0,
                                      child: Container(
                                          alignment: Alignment.center,
                                          color: getColor(ind),
                                          child: FlatButton(
                                            splashColor: Color(0xff2ed573),
                                            onPressed: () {},
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(22.0)),
                                            ),
                                            //alignment: Alignment.center,
                                            child: Text(
                                              'Rs :' +
                                                  itemList[ind]
                                                      .finalPrice
                                                      .toString(),
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15.0),
                                            ),
                                          ))),
                                ],
                              )),
                        ],
                      ),
                    ));
                  })),
        ],
      ),
      bottomSheet: Container(
          alignment: Alignment.bottomLeft,
          height: 60.0,
          child: Card(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: 15.0),
                ),
                Text(
                  'Total :',
                  style: TextStyle(
                      fontSize: 17.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  finalValue(),
                  style: TextStyle(fontSize: 17.0, color: Colors.black54),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.center,
                    child: OutlineButton(
                        borderSide: BorderSide(color: Colors.red.shade500),
                        child: const Text('CONFIRM ORDER'),
                        textColor: Colors.red.shade500,
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (ctx) => Checkout()));
                        },
                        shape: new OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        )),
                  ),
                ),
              ],
            ),
          )),
    );
  }

  verticalDivider() => Container(
        padding: EdgeInsets.all(2.0),
      );

  _verticalD() => Container(
        margin: EdgeInsets.only(left: 3.0, right: 0.0, top: 07.0, bottom: 0.0),
      );

  void showDemoDialog<T>({BuildContext context, Widget child}) {
    showDialog<T>(
      context: context,
      builder: (BuildContext context) => child,
    ).then<void>((T value) {
      // The value passed to Navigator.pop() or null.
      if (value != null) {
        _scaffoldKey.currentState
            .showSnackBar(SnackBar(content: Text('You selected: $value')));
      }
    });
  }
}

Color getColor(int selector) {
  if (selector % 2 == 0) {
    return Color(0xff2ed573).withOpacity(0.7);
  } else {
    return Colors.redAccent.withOpacity(0.7);
  }
}

String finalValue() {
  int i = itemList.length - 1;
  int result = 0;
  for (int j = 0; j <= i; j++) {
    result += itemList[j].finalPrice;
  }
  return 'Rs :' + result.toString();
}
