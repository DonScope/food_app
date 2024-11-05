import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/View/ResetPassword/ViaSMS_screen.dart';

class Selectmethod extends StatefulWidget {
  const Selectmethod({super.key});

  @override
  State<Selectmethod> createState() => _SelectmethodState();
}

class _SelectmethodState extends State<Selectmethod> {
  int selectedIndex = 0;

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
                    'Forgot password?',
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
                  SizedBox(height: 25.h),
                  InkWell(
                    onTap: () {
                      selectedIndex = selectedIndex == 1 ? 0 : 1;
                      setState(() {});
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 16.w),
                      width: 350.w,
                      height: 70.h,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(12, 221, 221, 221),
                        borderRadius: BorderRadius.circular(20.r),
                        border: Border.all(color: selectedIndex == 1 ? Colors.green : Colors.transparent),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 40.w,
                            height: 40.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: Image.asset(
                              "assets/Message.png",
                            ),
                          ),
                          SizedBox(width: 12.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Via sms:",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12.sp,
                                ),
                              ),
                              SizedBox(height: 4.h),
                              Row(
                                children: [
                                  Text(
                                    "● ● ● ●  ● ● ● ●  ",
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    "4235",
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 25.h),
                  InkWell(
                    onTap: () {
                      selectedIndex = selectedIndex == 2 ? 0 : 2;
                      setState(() {});
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 16.w),
                      width: 350.w,
                      height: 70.h,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(12, 221, 221, 221),
                        borderRadius: BorderRadius.circular(20.r),
                        border: Border.all(color: selectedIndex == 2 ? Colors.green : Colors.transparent),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 40.w,
                            height: 40.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: Image.asset(
                              "assets/Email.png",
                            ),
                          ),
                          SizedBox(width: 12.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Via email:",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12.sp,
                                ),
                              ),
                              SizedBox(height: 4.h),
                              Row(
                                children: [
                                  Text(
                                    "● ● ● ●",
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    "  @gmail.com",
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 300.h),
                  InkWell(
                    enableFeedback: true,
                    onTap: () {
                      if (selectedIndex != 0) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ViasmsScreen(),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Please select an option before proceeding')),
                        );
                      }
                    },
                    child: Center(
                      child: Container(
                        width: 157.w,
                        height: 57.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.w),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              selectedIndex == 0
                                  ? Colors.grey
                                  : Color.fromRGBO(83, 232, 139, 1),
                              selectedIndex == 0
                                  ? Colors.grey
                                  : Color.fromRGBO(21, 190, 119, 1),
                            ],
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Next",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.sp,
                            ),
                          ),
                        ),
                      ),
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
