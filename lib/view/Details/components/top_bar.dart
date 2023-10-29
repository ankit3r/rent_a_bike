import 'package:flutter/material.dart';
import 'package:rent_a_bike/view_model/const_value.dart';

class TopBar extends StatelessWidget {
  final String title;
  const TopBar({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
      IconButton(onPressed: () {
        Navigator.pop(context);
      }, icon: const Icon(Icons.arrow_back,size: 30,)),
        Chip(label: Padding(
         padding: const EdgeInsets.symmetric(horizontal: 65),
         child: Text(title,style:const  TextStyle(fontSize: titleFontSize,fontWeight: FontWeight.bold),),
       ))
    ],);
  }
}
