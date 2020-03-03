import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'adding_listing_brain.dart';

ListingBrain listingBrain = ListingBrain();

class ItemsListing extends StatefulWidget {
  @override
  _ItemsListingState createState() => _ItemsListingState();
}

class _ItemsListingState extends State<ItemsListing> {
  List addContainers() {
    List<Widget> containers = [];
    for (int i = 0; i < listingBrain.getListLength(); i++) {
      containers.add(listingBrain.genNewProductListing(i));
    }
    return containers;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40, right: 30, top: 15, bottom: 50),
      child: ListView(
        children: addContainers(),
      ),
    );
  }
}
