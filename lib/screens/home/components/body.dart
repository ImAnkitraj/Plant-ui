
import 'package:flutter/material.dart';
import 'package:plant/constants.dart';
import 'package:plant/screens/home/components/featured_plants.dart';
import 'package:plant/screens/home/components/recommend_plants.dart';
import './header_with_searchbox.dart';
import './tile_with_more_btn.dart';
class Body extends StatelessWidget{
  Widget build(context){

    //It will provide us total width and height of the screen
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TileWithMoreBtn(title: 'Recommended', press:(){}),
          RecommendPlants(),
          TileWithMoreBtn(title: 'Featured Plants', press:(){}),
          FeaturedPalnts(),
          SizedBox(height: kDefaultPadding)
        ],
      ),
    );
  }
}
