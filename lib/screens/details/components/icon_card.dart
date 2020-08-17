import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:plant/constants.dart';


class IconCard extends StatelessWidget{
  const IconCard({
    Key key,
    this.icon,
  }): super(key: key);
  final String icon;
  Widget build(context){
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
      padding: EdgeInsets.all(kDefaultPadding / 2),
      height: 62,
      width: 62,
      decoration: BoxDecoration(
        color: kbackgroundColor,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(blurRadius: 22,offset: Offset(0,15), color: kPrimaryColor.withOpacity(0.22)),
          BoxShadow(blurRadius: 20,offset: Offset(-15,-15), color: Colors.white),
        ] 
      ),
      child: SvgPicture.asset('$icon'),
    );
  }
}