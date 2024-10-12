import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/View/RegistrationProcess/Sign_in_Page.dart';
import 'package:food_app/View/RegistrationProcess/Signup_Process.dart';
import 'package:food_app/View/Widgets/CustomButton.dart';
import 'package:food_app/View/Widgets/CustomTextFieldWithImage.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
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
          Positioned(
            top: 300.h,
            child: Container(
              padding: EdgeInsets.all(10.w),
              child: Center(
                child: Text(
                  "Sign Up For Free",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(10.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 300.h),
                  SizedBox(height: 50.h),
                  Customtextfieldwithimage(
                      image: "assets/Profile.png", hintText: "Username"),
                  SizedBox(height: 20.h),
                  Customtextfieldwithimage(
                      image: "assets/Message1.png", hintText: "Email"),
                  SizedBox(height: 20.h),
                  Customtextfieldwithimage(
                    image: "assets/Lock.png",
                    hintText: "Password",
                    obscureText: true,
                    ic: Icon(Icons.remove_red_eye),
                  ),
                  SizedBox(height: 20.h),
             Row(
      children: [
        Container(
          width: 22,
          height: 22,
          child: Image(
            image: AssetImage("assets/CheckIcon.png"),
            alignment: Alignment.center,
          ),
        ),
        SizedBox(width: 8),
        Text(
          "Keep Me Signed In",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 12.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
              Row(
      children: [
        Container(
          width: 22,
          height: 22,
          child: Image(
            image: AssetImage("assets/CheckIcon.png"),
            alignment: Alignment.center,
          ),
        ),
        SizedBox(width: 8),
        Text(
          "Email Me About Special Pricing",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 12.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
                  SizedBox(height: 20.h),
                  Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignupProcess(),
                          ),
                        );
                      },
                      child: CustomButton(text: "Create Account"),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignInPage(),
                            ));
                      },
                      child: Text(
                        "Already have an account?",
                        style: TextStyle(
                          color: const Color.fromRGBO(83, 232, 139, 1),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

 
}
