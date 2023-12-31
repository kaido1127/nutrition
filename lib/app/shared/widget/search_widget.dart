import 'package:flutter/material.dart';

Widget SearchWidegt(){
  return const Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 50,
          backgroundColor: Colors.lightBlueAccent,
          child: Icon(
            Icons.search,
            color: Colors.white,
            size: 60,
          ),
        ),
        SizedBox(height: 20,),
        Text(
          "Search Your Food Now !",
          style: TextStyle(color: Colors.black54),
        ),
      ],
    ),
  );
}