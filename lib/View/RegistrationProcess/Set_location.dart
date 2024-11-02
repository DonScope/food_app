import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/View/RegistrationProcess/Signup_Success_Notification.dart';
import 'package:food_app/View/Widgets/CustomButton.dart';

class SetLocation extends StatelessWidget {
  const SetLocation({super.key});

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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Upload Your Photo \nProfile',
                    style: TextStyle(
                        fontSize: 30.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 40.h),
                  Text(
                    'This data will be displayed in your account \nprofile for security',
                    style: TextStyle(fontSize: 14.sp, color: Colors.black),
                  ),
                  SizedBox(height: 25.h),
                  Container(
                    padding: EdgeInsets.all(10.w),
                    width: double.infinity,
                    height: 147.h,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 253, 253, 1),
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset("assets/Pin Logo.png"),
                            SizedBox(width: 15.w),
                            Padding(
                              padding: EdgeInsets.only(top: 8.0),
                              child: Text(
                                "Your Location",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15.h),
                        Container(
                          width: double.infinity,
                          height: 73.h,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(239, 238, 238, 0.321),
                            borderRadius: BorderRadius.circular(20.r),
                          ),
                          child: InkWell(
                            onTap: () {},
                            child: Center(
                              child: Text(
                                "Set Location",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 270.h),
                  InkWell(
                    enableFeedback: true,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignupSuccessNotification(),
                      ),
                    ),
                    child: Center(child: CustomButton(text: "Next")),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
