import 'package:flutter/material.dart';
import 'package:plant/constants.dart';

class FeaturedPalnts extends StatelessWidget {

  Widget build(context){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          FeaturedPlantCard(image: 'assets/images/bottom_img_1.png',press:()=>print('Pressed')),
          FeaturedPlantCard(image: 'assets/images/bottom_img_2.png',press:()=>print('Pressed')),
        ],
      ),
    );
  }
}

class FeaturedPlantCard extends StatelessWidget{
  const FeaturedPlantCard({
    Key key,
    this.image,
    this.press,
  }) : super(key : key);

  final String image;
  final Function press;
  Widget build(context){
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(left: kDefaultPadding, top: kDefaultPadding/2, bottom: kDefaultPadding/2),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(fit: BoxFit.cover ,image: AssetImage(image))
        ),
      ),
    );
  }
}