import 'package:flutter/material.dart';
import 'constants.dart';

class ItemListingStyled extends StatelessWidget {
  ItemListingStyled(
      {@required this.dishName,
      @required this.dishPic,
      @required this.dishPrice});

  final String dishPic;
  final String dishPrice;
  final String dishName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
//            height: 120,
//            color: Colors.redAccent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Image(
                image: AssetImage(dishPic),
                fit: BoxFit.cover,
                height: kListingItemImageSize,
                width: kListingItemImageSize),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  dishName,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                Text(
                  dishPrice,
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
                )
              ],
            ),
            SizedBox(
              width: 30,
            ),
            IconButton(
              icon: Icon(
                kPlus,
                color: Colors.black87,
              ),
              iconSize: 25,
              onPressed: () {
                print("plus icon was pressed");
              },
            ),
          ],
        ),
      ),
    );
  }
}
