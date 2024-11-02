import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/View/ResetPassword/ViaSMS_screen.dart';
import 'package:food_app/View/Widgets/CustomButton.dart';
import 'package:food_app/View/Widgets/CustomTextFieldWithImage.dart';

class Resetpassword extends StatelessWidget {
  const Resetpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset("assets/Icon Back.png"),
        ),
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/Pattern2.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(10.w),
              child: SingleChildScrollView(
                physics: NeverScrollableScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Reset your password \nhere',
                      style: TextStyle(
                        fontSize: 30.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 40.h),
                    Text(
                      'Select which contact details should we use to reset your password',
                      style: TextStyle(fontSize: 14.sp, color: Colors.black),
                    ),
                    SizedBox(height: 30.h),
                    Customtextfieldwithimage(hintText: "New Password"),
                    SizedBox(height: 25.h),
                    Customtextfieldwithimage(
                      hintText: "Confirm Password",
                      ic: Icon(Icons.remove_red_eye),
                    ),
                    SizedBox(height: 255.h),
                    InkWell(
                      enableFeedback: true,
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ViasmsScreen()),
                      ),
                      child: Center(child: CustomButton(text: "Next")),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
