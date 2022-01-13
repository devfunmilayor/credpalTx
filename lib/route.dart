import 'package:credpaltest/ui/dashBoard.dart';
import 'package:flutter/material.dart';

class RouterGenerator {
  Route generateRoute(RouteSettings settings){
    switch(settings.name){
      case '/':
        return MaterialPageRoute(builder: (_)=>DashBoard());
      default:
        return null ;
    }

  }
}