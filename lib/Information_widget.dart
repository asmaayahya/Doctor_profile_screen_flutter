// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:profile_design/Icon_widget.dart';

class Information_widget extends StatelessWidget {
  final List <String> texts;
  final List <Icon_widget> icons;
  const Information_widget({
    required this.icons,
    required this.texts ,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
     
      width: double.infinity,
      decoration: BoxDecoration(
      color: Color(0xFFE5F2FB),
      borderRadius: BorderRadius.circular(10)
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
         children: [
        Row(
          children: [
           icons[0],
           SizedBox(width: 5,),
           Text(texts[0])
        
          ],
        ),
        SizedBox(height: 10,),
        Row(
          children: [
           icons[1],
           SizedBox(width: 5,),
    
           Text(texts[1])
          ],
        ),
        SizedBox(height: 10,),
        Row(
          children: [
          icons[2],
          SizedBox(width: 5,),
    
           Text(texts[2])
          ],
        )
         ],
        
        ),
      ),
    );
  }
}

