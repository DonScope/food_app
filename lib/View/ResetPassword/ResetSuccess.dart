import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/View/RegistrationProcess/Log_in_page.dart';
import 'package:food_app/View/Widgets/CustomButton.dart';

class Resetsuccess extends StatelessWidget {
  const Resetsuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'assets/Pattern.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Positioned(
            top: 200.h,
            child: Container(
              padding: EdgeInsets.all(10.w),
              child: Column(
                children: [
                  Image.asset(
                    'assets/success.png',
                    height: 203.h,
                    width: 188.w,
                    fit: BoxFit.contain,
                  ),
                    Text(
                    "Congrats!",
                    style: TextStyle(
                      color: Color.fromRGBO(83, 232, 139, 1),
                      fontSize: 30.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                    Text(
                    "Password reset succesful",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 23.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 200),
                   InkWell(
                      onTap: () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignInPage(),
                          )),
                      child: CustomButton(text: "Back"))
                ],
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}