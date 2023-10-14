import 'package:flutter/material.dart';
import 'package:quiz_route/p1.dart';
import 'package:quiz_route/p2.dart';

import 'package:quiz_route/utl/p3.dart';
import 'package:quiz_route/utl/p4.dart';
class MainPage extends StatefulWidget {
  static String routeName = "main";
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MainPage> {
   int currentIndex = 0 ;
   List pages =[
     P1(),
     P2(),
     P3(),
     p4(),

  
   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:pages[currentIndex] ,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        currentIndex: currentIndex,
        onTap: (int index){
          setState(() {
            currentIndex = index ;
          });

        },
         selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showUnselectedLabels: false,
        showSelectedLabels: true,
        elevation: 0,
        items: [
          BottomNavigationBarItem(label:"",icon : Icon(Icons.home_filled) ) ,
          BottomNavigationBarItem(label :"",icon: Icon(Icons.sports_gymnastics )) ,
          BottomNavigationBarItem(label : "" ,icon: Icon(Icons.search) ) ,
          BottomNavigationBarItem(label : "",icon : Icon(Icons.settings) ) ,


      ]),
    );
  }
}