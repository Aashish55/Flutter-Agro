import 'package:flutter/material.dart';

class Payment_Screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => payment();
}

class Item {
  final String itemName;
  final String itemQun;
  final String itemPrice;

  Item({this.itemName, this.itemQun, this.itemPrice});
}

class payment extends State<Payment_Screen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool checkboxValueA = true;
  bool checkboxValueB = false;
  bool checkboxValueC = false;

  IconData _backIcon() {
    switch (Theme.of(context).platform) {
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
        return Icons.arrow_back;
      case TargetPlatform.iOS:
        return Icons.arrow_back_ios;
    }
    assert(false);
    return null;
  }

  int radioValue = 0;
  void handleRadioValueChanged(int value) {
    setState(() {
      radioValue = value;
    });
  }

  String toolbarname = 'CheckOut';

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

    AppBar appBar = AppBar(
      title: Text(
        toolbarname,
        style: new TextStyle(color: Colors.white),
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
            ),
          ),
        )
      ],
    );

    return new Scaffold(
      key: _scaffoldKey,
      appBar: appBar,
      backgroundColor: Color(0xffe5e5e5),
      body: new SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
                margin: EdgeInsets.all(5.0),
                child: Card(
                    child: Container(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            // three line description
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 8.0),
                                  child: Container(
                                      alignment: Alignment.center,
                                      child: Row(
                                        children: <Widget>[
                                          Text(
                                            'Delivery',
                                            style: TextStyle(
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black38),
                                          ),
                                          IconButton(
                                              icon: Icon(
                                                Icons.play_circle_outline,
                                                color: Colors.black38,
                                              ),
                                              onPressed: null)
                                        ],
                                      )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 8.0),
                                  child: Container(
                                      alignment: Alignment.center,
                                      child: Row(
                                        children: <Widget>[
                                          Text(
                                            'Payment',
                                            style: TextStyle(
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black),
                                          ),
                                          IconButton(
                                              icon: Icon(
                                                Icons.check_circle,
                                                color: Colors.green,
                                              ),
                                              onPressed: null)
                                        ],
                                      )),
                                ),
                              ],
                            ),
                          ],
                        )))),
            _verticalDivider(),
            new Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(
                  left: 12.0, top: 5.0, right: 0.0, bottom: 5.0),
              child: new Text(
                'Payment Method',
                style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0),
              ),
            ),
            _verticalDivider(),
            new Container(
                height: 264.0,
                margin: EdgeInsets.all(10.0),
                child: Card(
                  child: Container(
                    child: Container(
                        child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("Wallet / UPI",
                                  maxLines: 10,
                                  style: TextStyle(
                                      fontSize: 15.0, color: Colors.black)),
                              Radio<int>(
                                  value: 0, groupValue: 0, onChanged: null),
                            ],
                          ),
                        ),
                        Divider(),
                        _verticalD(),
                        Container(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Net Banking",
                                    maxLines: 10,
                                    style: TextStyle(
                                        fontSize: 15.0, color: Colors.black)),
                                Radio<int>(
                                    value: 0,
                                    groupValue: radioValue,
                                    onChanged: null),
                              ],
                            )),
                        Divider(),
                        _verticalD(),
                        Container(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Credit / Debit / ATM Card",
                                    maxLines: 10,
                                    style: TextStyle(
                                        fontSize: 15.0, color: Colors.black)),
                                Radio<int>(
                                    value: 0,
                                    groupValue: 0,
                                    onChanged: handleRadioValueChanged),
                              ],
                            )),
                        Divider(),
                        _verticalD(),
                        Container(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Cash on Delivery",
                                    maxLines: 10,
                                    style: TextStyle(
                                        fontSize: 15.0, color: Colors.black)),
                                Radio<int>(
                                    value: 0, groupValue: 0, onChanged: null),
                              ],
                            )),
                      ],
                    )),
                  ),
                )),
            Padding(
              padding: EdgeInsets.only(bottom: 55.0),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
          alignment: Alignment.bottomLeft,
          height: 50.0,
          child: Card(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Total :',
                  style: TextStyle(
                      fontSize: 17.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Rs: 365',
                  style: TextStyle(fontSize: 17.0, color: Colors.black54),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.center,
                    child: OutlineButton(
                        borderSide: BorderSide(color: Colors.green),
                        child: const Text('PROCEED TO PAY'),
                        textColor: Colors.green,
                        onPressed: () {
                          //   Navigator.push(context, MaterialPageRoute(builder: (context)=> Item_Details()));
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

  _verticalDivider() => Container(
        padding: EdgeInsets.all(2.0),
      );

  _verticalD() => Container(
        margin: EdgeInsets.only(left: 5.0),
      );
}
