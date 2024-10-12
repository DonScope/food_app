import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Customtextfieldwithimage extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final String? image;
  final Widget? ic;
  const Customtextfieldwithimage({   super.key,
    required this.hintText,
    this.obscureText = false,
    this.image,
    this.ic
    });

  @override
  Widget build(BuildContext context) {
    return TextField(
  obscureText: obscureText,
  decoration: InputDecoration(
    suffixIcon: ic !=null ? ic : null,
    prefixIcon: image != null ?  Image(image: AssetImage("$image")) : null,
    hintText: hintText,
    hintStyle: TextStyle(
      color: Colors.grey,
      fontSize: 16.sp, 
    ),
    fillColor: Color.fromRGBO(255, 253, 253, 1),
    filled: true,
    contentPadding: EdgeInsets.symmetric(
      vertical: 20.h, 
      horizontal: 16.w, 
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20.r), 
      borderSide: BorderSide(
        color: Colors.white,
        width: 0.5.w, 
      ),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20.r),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20.r),
      borderSide: BorderSide(
        color: Colors.green,
        width: 2.0.w, 
      ),
    ),
  ),
);
  }
}