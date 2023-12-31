import 'package:flutter/material.dart';

Color? colorsState(double ratioCalorie){
  switch(ratioCalorie){
    case <=0 : return Colors.grey;
    case <1 : return Colors.blue;
  }
  return Colors.red[300];
}