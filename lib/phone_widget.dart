// ignore_for_file: camel_case_types, prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';


class phone_widget extends StatelessWidget {
 final int phone_num;
  const phone_widget({
    
    super.key,
    required this.phone_num
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
              child: Row(
    children: [
      Icon(Icons.phone,size: 20,),
      Text(phone_num.toString())
    ],
              ),
      decoration: BoxDecoration(
        color: Color(0xFFE5F2FB),
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}