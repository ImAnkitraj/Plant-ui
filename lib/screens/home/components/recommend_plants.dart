import 'package:flutter/material.dart';
import 'package:plant/constants.dart';
import 'package:plant/screens/details/details_screen.dart';

class RecommendPlants extends StatelessWidget{
  Widget build(context){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: <Widget>[
        RecommendPlantCard(country: 'Russia',image: 'assets/images/image_1.png',title: 'Samantha',price: 440,press:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailScreen()));}),
        RecommendPlantCard(country: 'Russia',image: 'assets/images/image_2.png',title: 'Samantha',price: 440,press:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailScreen()));}),
        RecommendPlantCard(country: 'Russia',image: 'assets/images/image_3.png',title: 'Samantha',price: 440,press:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailScreen()));}),
      ],),
    );
  }
}

class RecommendPlantCard extends StatelessWidget{
  const RecommendPlantCard({
    Key key,
    this.price,
    this.image,
    this.title,
    this.country,
    this.press
  }) : super(key : key);

  final String image,title,country;
  final int price;
  final Function press;
  Widget build(context){

    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        top: kDefaultPadding , 
        left: kDefaultPadding, 
      ),
      width: size.width * 0.4,
      child: Column(children: <Widget>[
        Image.asset(image),
        GestureDetector(
          onTap: press,
          child: Container(
            margin: EdgeInsets.only(
              bottom: kDefaultPadding * 2.5,  
            ),
            padding: EdgeInsets.all(kDefaultPadding/2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10),),
              color: Colors.white,
              boxShadow: [BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 50,
                color: kPrimaryColor.withOpacity(0.23),
              )],
            ),
            child: Row(
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(text:title+"\n".toUpperCase(), style: Theme.of(context).textTheme.button),
                      TextSpan(text:country.toUpperCase(), style: TextStyle(color: kPrimaryColor.withOpacity(0.5),),),
                    ]
                  ),
                ),
                Spacer(),
                Text('\$$price', style: Theme.of(context).textTheme.button.copyWith(color: kPrimaryColor),)
              ],
            ),
          ),
        ),
      ],),
    );
  }
}