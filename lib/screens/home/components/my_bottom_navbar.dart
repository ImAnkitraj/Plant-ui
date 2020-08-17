import 'package:flutter/material.dart';
import 'package:plant/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyBottomNavBar extends StatelessWidget {

  Widget build(context){
    return Container(
      padding: EdgeInsets.only(left: kDefaultPadding * 2,right:kDefaultPadding * 2,),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 35,
            color: kPrimaryColor.withOpacity(0.38),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(icon: SvgPicture.asset('assets/icons/flower.svg'), onPressed: (){}),
          IconButton(icon: SvgPicture.asset('assets/icons/heart-icon.svg'), onPressed: (){}),
          IconButton(icon: SvgPicture.asset('assets/icons/user-icon.svg'), onPressed: (){}),
        ],
      ),
    );
  }
}