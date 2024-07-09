import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar customAppBar(double height, double width) {
  return AppBar(
    toolbarHeight: 75,
    leading: Icon(
      Icons.menu,
      size: 30,
    ),
    centerTitle: true,
    title: Container(
      alignment: Alignment.center,
      height: height / 20,
      width: width / 3.5,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1.7),
      ),
      child: Icon(Icons.all_inclusive,size: 40,),
    ),
    actions: [
      Icon(CupertinoIcons.suit_diamond_fill,size: 30,color: Colors.green,),
      Icon(CupertinoIcons.suit_diamond,size: 30,),
      Icon(CupertinoIcons.suit_diamond,size: 30,),
    ],
  );
}