import 'package:flutter/material.dart';
import 'constants.dart';
import 'items_listing.dart';

class StartUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kStatUpPage_MainBackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          padding: EdgeInsets.only(left: 10),
          icon: Icon(
            kBackPageLeft,
            color: Colors.white,
          ),
          onPressed: () {
            print("Home Screen Back Arrow Icon Was Pressed");
          },
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    print("Setting Icon Was Pressed");
                  },
                  icon: Icon(kSetting),
                ),
                SizedBox(
                  width: 0,
                ),
                IconButton(
                  onPressed: () {
                    print("Side Grid Icon Was Pressed");
                  },
                  icon: Icon(kAppBar_Grid),
                ),
              ],
            ),
          )
        ],
      ),
      body: HomePageBody(),
    );
  }
}

class HomePageBody extends StatefulWidget {
  @override
  _HomePageBodyState createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 40, bottom: 30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: <Widget>[
              Text(
                'Healthy ',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 30),
              ),
              Text(
                'Food',
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                    fontSize: 30),
              )
            ],
          ),
        ),
        Expanded(
          child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 20,
                    spreadRadius: 1,
                  )
                ],
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(90),
                ),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  ItemsListing(),
                  Positioned(
                    bottom: MediaQuery.of(context).size.height * 0.03,
                    child: Row(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            print("Search Icon Was Pressed");
                          },
                          child: Container(
                            height: 60,
                            width: 60,
                            child: Center(
                              child: Icon(
                                kSearchIcon,
                                color: Colors.black,
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: Colors.grey,
                                  style: BorderStyle.solid,
                                  width: 1.0),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            print("Shopping Cart Icon Was Pressed");
                          },
                          child: Container(
                            height: 60,
                            width: 60,
                            child: Center(
                              child: Icon(
                                kShopping,
                                color: Colors.black,
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: Colors.grey,
                                  style: BorderStyle.solid,
                                  width: 1.0),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 70,
                        ),
                        GestureDetector(
                          onTap: () {
                            print("CheckOut Icon Was Pressed");
                          },
                          child: Container(
                            height: 60,
                            width: 110,
                            decoration: BoxDecoration(
                                color: Color(0xFF170B25),
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                    style: BorderStyle.solid,
                                    color: Colors.grey,
                                    width: 1.0)),
                            child: Center(
                              child: Text(
                                'Checkout',
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )),
        )
      ],
    );
  }
}
