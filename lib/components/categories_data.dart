import 'package:flutter/material.dart';
import 'package:decor_app/constants/constants.dart';

late ListView catgList = ListView(
  scrollDirection: Axis.horizontal,
  shrinkWrap: true,
  children: <Widget>[
    ElevatedButton.icon(
        onPressed: () {},
        style: catgStyle,
        label: Text('Price Range', style: TextStyle(color: Colors.grey)),
        icon: catgIcon),
    SizedBox(width: 10),
    ElevatedButton.icon(
        onPressed: () {},
        style: catgStyle,
        label: Text('Tags', style: TextStyle(color: Colors.grey)),
        icon: catgIcon),
    SizedBox(width: 10),
    ElevatedButton.icon(
        onPressed: () {},
        style: catgStyle,
        label: Text('Style', style: TextStyle(color: Colors.grey)),
        icon: catgIcon),
    SizedBox(width: 10),
    ElevatedButton.icon(
        onPressed: () {},
        style: catgStyle,
        label: Text('Color', style: TextStyle(color: Colors.grey)),
        icon: catgIcon),
  ],
);
