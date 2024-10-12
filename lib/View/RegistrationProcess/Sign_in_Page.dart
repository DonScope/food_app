import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/View/RegistrationProcess/Sign_up_Page.dart';
import 'package:food_app/View/ResetPassword/SelectMethod.dart';
import 'package:food_app/View/Widgets/CustomButton.dart';
import 'package:food_app/View/Widgets/CustomLoginButtons.dart';
import 'package:food_app/View/Widgets/CustomTextField.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
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
            top: 47.h,
            child: Container(
              padding: EdgeInsets.all(10.w),
              child: Image.asset(
                'assets/Logo.png',
                height: 203.h,
                width: 188.w,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.w),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 300.h),
                  Text(
                    "Login To Your Account",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 50.h),
                  CustomTextField(hintText: "Email"),
                  SizedBox(height: 20.h),
                  CustomTextField(
                    hintText: "Password",
                    obscureText: true,
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    "Or Continue With",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    children: [
                      Expanded(
                          child: CustomLoginButtons(
                              Leading: "assets/facebook.png", text: "Facebook")),
                      SizedBox(width: 15),
                      Expanded(
                          child: CustomLoginButtons(
                              Leading: "assets/google.png", text: "Google")),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Selectmethod(),));
                      },
                      child: Text(
                        "Forgot your password?",
                        style: TextStyle(
                          color:  Color.fromRGBO(83, 232, 139, 1),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                  SizedBox(height: 10.h),
                  InkWell(
                      onTap: () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpPage(),
                          )),
                      child: CustomButton(text: "Login"))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
