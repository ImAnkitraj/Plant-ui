import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant/constants.dart';
import 'package:plant/screens/home/components/my_bottom_navbar.dart';
import './components/body.dart';
class HomeScreen extends StatelessWidget {
  Widget build(context){
    return Scaffold(
      appBar: buildAppBar(),
      body:Body(),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }

  Widget buildAppBar(){
    return AppBar(
      elevation: 0,
      leading: IconButton(icon: SvgPicture.asset('assets/icons/menu.svg'), onPressed: (){},),
    );
  }
}