import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/View/RegistrationProcess/Payment_Process.dart';
import 'package:food_app/View/Widgets/CustomButton.dart';
import 'package:food_app/View/Widgets/CustomTextFieldWithImage.dart';

class SignupProcess extends StatefulWidget {
  const SignupProcess({super.key});

  @override
  State<SignupProcess> createState() => _SignupProcessState();
}

class _SignupProcessState extends State<SignupProcess> {
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
            icon: Image.asset("assets/Icon Back.png")),
      ),
      body: Container(
               width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
          'assets/Pattern2.png',
        ))),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(10.w),
            child: SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Fill in your bio to get started',
                    style: TextStyle(
                        fontSize: 30.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 50.h),
                  Text(
                    'This data will be displayed in your account \nprofile for security',
                    style: TextStyle(fontSize: 14.sp, color: Colors.black),
                  ),
                  SizedBox(height: 20.h),
                  Customtextfieldwithimage(hintText: "First Name"),
                  SizedBox(height: 15.h),
                  Customtextfieldwithimage(hintText: "Last Name"),
                  SizedBox(height: 15.h),
                  Customtextfieldwithimage(hintText: "Mobile Number"),
                  SizedBox(height: 200.h),
                  Center(
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PaymentProcess(),
                        ),
                      ),
                      child: CustomButton(text: "Next"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
