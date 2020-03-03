import 'package:flutter/material.dart';
import 'item_listing_styling.dart';

class Listing {
  Listing(
      {@required this.dishName,
      @required this.dishPic,
      @required this.dishPrice});
  final String dishPic;
  final String dishPrice;
  final String dishName;
}

class ListingBrain {
  List<Listing> _listing = [
    Listing(
        dishName: 'Salmon bowl',
        dishPic: 'assets/plate1.png',
        dishPrice: '\$24.00'),
    Listing(
        dishName: 'Spring bowl',
        dishPic: 'assets/plate2.png',
        dishPrice: '\$22.00'),
    Listing(
        dishName: 'Avocado bowl',
        dishPic: 'assets/plate6.png',
        dishPrice: '\$26.00'),
    Listing(
        dishName: 'Berry bowl',
        dishPic: 'assets/plate5.png',
        dishPrice: '\$31.00'),
    Listing(
        dishName: 'Salmon bowl',
        dishPic: 'assets/plate1.png',
        dishPrice: '\$24.00'),
    Listing(
        dishName: 'Spring bowl',
        dishPic: 'assets/plate2.png',
        dishPrice: '\$22.00'),
    Listing(
        dishName: 'Avocado bowl',
        dishPic: 'assets/plate6.png',
        dishPrice: '\$26.00'),
    Listing(
        dishName: 'Berry bowl',
        dishPic: 'assets/plate5.png',
        dishPrice: '\$31.00'),
  ];

  String _getListingName(
      {int listingNumber, bool dishName, bool dishPic, bool dishPrice}) {
    if (dishName == true) {
      return _listing[listingNumber].dishName;
    } else if (dishPic == true) {
      return _listing[listingNumber].dishPic;
    } else if (dishPrice == true) {
      return _listing[listingNumber].dishPrice;
    }
  }

  Widget genNewProductListing(int ListingNumberForHomePage) {
    String product_name = _getListingName(
        listingNumber: ListingNumberForHomePage, dishName: true);
    String product_picture =
        _getListingName(listingNumber: ListingNumberForHomePage, dishPic: true);
    String product_price = _getListingName(
        listingNumber: ListingNumberForHomePage, dishPrice: true);

    return ItemListingStyled(
      dishName: product_name,
      dishPic: product_picture,
      dishPrice: product_price,
    );
  }

  int getListLength() {
    return _listing.length;
  }
}
