
import 'package:flutter/material.dart';

class Icon_widget extends StatelessWidget {
  final IconData myicon;
  const Icon_widget({
    required this.myicon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
     height: 25,
     width: 25,
     decoration: BoxDecoration(
       color: Color(0xFF265ED7),
       borderRadius: BorderRadius.circular(50)
     ),
     child: Icon(myicon,color: Colors.white,size: 16,),
    );
  }
}