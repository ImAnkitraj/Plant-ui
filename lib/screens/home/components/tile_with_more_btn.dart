import 'package:flutter/material.dart';
import 'package:plant/constants.dart';


class TileWithMoreBtn extends StatelessWidget{
  const TileWithMoreBtn({
    Key key,
    this.title,
    this.press,
  }) : super(key: key);
  final String title ;
  final Function press;

  Widget build(context){
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: <Widget>[
          TextWithCustomUnderline(text:title),
          Spacer(),
          FlatButton(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: kPrimaryColor,
            onPressed: press,
            child: Text('More', style: TextStyle(color: Colors.white),),
          )
        ],
      ),
    );
  }
}

class TextWithCustomUnderline extends StatelessWidget{
  const TextWithCustomUnderline({
    Key key,
    this.text,
  })  : super(key: key);

  final String text;

  Widget build(context){
    return  Container(
      height: 24,
      child: Stack(
        children: <Widget>[
          Padding(
            child: Text(text, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            padding: const EdgeInsets.only(left: kDefaultPadding/4),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: const EdgeInsets.only(left: kDefaultPadding/4),
              height: 7,
              color: kPrimaryColor.withOpacity(0.2),
            ),
          ),
        ],
      ),
    );
  }
}