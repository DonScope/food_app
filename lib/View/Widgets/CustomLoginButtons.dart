

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomLoginButtons extends StatelessWidget {
  final String Leading;
  final  String text;

  const CustomLoginButtons({super.key,required this.Leading, required this.text});

  @override
  Widget build(BuildContext context) {
     return InkWell(
       onTap: () {},
       child: Container(
         decoration: BoxDecoration(
           color: Colors.white,
           borderRadius: BorderRadius.circular(10.r),
           boxShadow: [BoxShadow(offset: Offset(3.w, 3.h))],
         ),
         child: ListTile(
           leading: CircleAvatar(
             child: Image.asset("$Leading"),
             backgroundColor: Colors.white,
           ),
           title: Text(
             text,
             style: TextStyle(fontWeight: FontWeight.bold),
           ),
         ),
       ),
     );
  }
}

 