import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';




class CustomButton extends StatelessWidget {
  final String text;

  const CustomButton({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
  
    return Container(
                    width: 157.w,
                    height: 57.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.w),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromRGBO(83, 232, 139, 1), 
                          Color.fromRGBO(21, 190, 119, 1), 
                        ],
                      ),
                    ),
                    child: Center(
                        child: Text(
                      text,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.sp),
                    )),
                  );
  }
}