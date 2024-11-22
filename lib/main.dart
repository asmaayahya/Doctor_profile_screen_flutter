
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:profile_design/Icon_widget.dart';
import 'package:profile_design/Information_widget.dart';
import 'package:profile_design/phone_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
      List <String> texts = ["Cleopatra Hospital","10 - 19","2 Gamaa Street, Giza"];
      List <Icon_widget> icons =[Icon_widget(myicon: Icons.local_hospital), Icon_widget(myicon: Icons.access_time_outlined) , Icon_widget(myicon: Icons.location_on,)];
      List <String> texts1 = ["dr@6.com","01032564823","01125466125"];
      List <Icon_widget> icons1 =[Icon_widget(myicon: Icons.mail), Icon_widget(myicon: Icons.phone) , Icon_widget(myicon: Icons.phone,)];


    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
     home:Scaffold(
        appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new,
        color: Colors.white,),
        title: Text(" Doctor Profile",
        style: TextStyle(
        color: Colors.white,
        fontSize: 20, 
        fontWeight: FontWeight.w700 ),),
        centerTitle: true,
        backgroundColor: Color(0xFF265ED7),
),

  body: Padding(
    padding: const EdgeInsets.all(15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           
              Row(
                      children: [
              ClipOval(child: Image.asset("assets/Doctor.jpg",height: 110,)),
                      SizedBox(width: 20,),
              Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              
                    children: [
                      Text("Dr. Mohammad Yahya",style: TextStyle(color:Color(0xFF265ED7) ,fontSize: 18,fontWeight: FontWeight.w500),),
                      Text("Eye special",style: TextStyle(color: Color(0xFF4B4A50),fontSize: 15),),
                      SizedBox(height: 10,),
                      Row(
                      children: [
              Icon(Icons.star,color: Color(0xFFFD9500),),
              Text(" 3", style: TextStyle(color:Color(0xFF265ED7),fontWeight: FontWeight.w600 ),)
                      ],
                      ),
                      Row(
              children: [
                phone_widget(phone_num: 1,),
                SizedBox(width: 10,),
                phone_widget(phone_num: 2,),
              ],
                      )
                    ],
              )
                      ]
                ),
                
          SizedBox(height: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text("About",style: TextStyle(color: Color(0xFF4B4A50),fontWeight: FontWeight.w600),),
              Text("Professor of Eye Special - Former Head of Department of Eye Special, Cairo University",style: TextStyle(color: Color(0xFF4B4A50)),)
            ],),
          SizedBox(height: 10,),
          
            Information_widget(texts: texts, icons: icons, ),
            Divider(
            color: Color(0xFF4B4A50), // Line color
            thickness: 1.5,      // Line thickness
            indent: 10.0,        // Start padding
            endIndent: 10.0,     // End padding
),
      SizedBox(height: 20,),
      Text("Contact Info",style: TextStyle(color: Color(0xFF4B4A50),fontWeight: FontWeight.w600),),
       SizedBox(height: 10,),
      Information_widget(texts: texts1, icons: icons1, ),
SizedBox( height: 20,),
Container(
  decoration: BoxDecoration( 
     borderRadius: BorderRadius.circular(10.0),
     color: Color(0xFF4CB050),),
     width: double.infinity,
  
  child: Row(
      mainAxisAlignment: MainAxisAlignment.center,  
       children: [
      Icon(Icons.chat_outlined, color: Colors.white), 
      
      SizedBox(width: 5,),
      ElevatedButton(
          onPressed: () {},
            style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF4CB050), 
            padding: EdgeInsets.symmetric(vertical: 16.0),
          
            elevation: 0, // Remove the shadow
          ),
          child: Text(
            "Chat With Dr. Mohammad",
            style: TextStyle(fontSize: 16.0, color: Colors.white),
          ),
        ),
      
    ],
  ),
),
SizedBox(height: 10,),
Container(
  decoration: BoxDecoration( 
     borderRadius: BorderRadius.circular(10.0),
     color: Color(0xFF265ED7),),
     width: double.infinity,
     child:  ElevatedButton(
          onPressed: () {},
            style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF265ED7), 
            padding: EdgeInsets.symmetric(vertical: 16.0),
          
            elevation: 0, // Remove the shadow
          ),
        child:   Text(
            "Book an Appointment",
            style: TextStyle(fontSize: 16.0, color: Colors.white),
          ),
        ),
      
    
  ),


          ],
          
        ),
       
  ),

     ),

    );
    }}



