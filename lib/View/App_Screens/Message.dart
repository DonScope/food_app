import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/View/App_Screens/Chatdetails.dart';
import 'package:food_app/View/BottomNavBar/BottomNav.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Bottomnav(),));
            },
            icon: Image.asset("assets/Icon Back.png", width: 24.w, height: 24.h)),
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
              padding: EdgeInsets.all(12.w), 
              child: SingleChildScrollView(
                physics: const NeverScrollableScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Chat',
                      style: TextStyle(
                          fontSize: 30.sp, 
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 15.h), 
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) =>  Details()));
                      },
                      child: Container(
                        height: 100.h, 
                        width: 360.w, 
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            color: Colors.white),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.w), 
                              child: Image.asset("assets/Photo Profile.png"),
                            ),
                            SizedBox(width: 10.w),
                            Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 24.h, right: 45.w),
                                  child: Text(
                                    "Anamwp",
                                    style: TextStyle(
                                      fontSize: 15.sp, 
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 6.h),
                                Text(
                                  "Your Order Just Arrived!",
                                  style: TextStyle(
                                    fontSize: 10.sp,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 70.w),
                            Padding(
                              padding: EdgeInsets.only(bottom: 41.h),
                              child: Text(
                                "20:00",
                                style: TextStyle(fontSize: 15.sp, color: Colors.grey),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Container(
                      height: 100.h,
                      width: 360.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r), color: Colors.white),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.w),
                            child: Image.asset("assets/Photo Profile (1).png"),
                          ),
                          SizedBox(width: 10.w),
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 24.h, right: 45.w),
                                child: Text(
                                  "Guy Hawkins",
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(height: 6.h),
                              Padding(
                                padding: EdgeInsets.only(right: 20.w),
                                child: Text(
                                  "Your Order Just Arrived!",
                                  style: TextStyle(
                                    fontSize: 10.sp,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 57.w),
                          Padding(
                            padding: EdgeInsets.only(bottom: 41.h),
                            child: Text(
                              "20:00",
                              style: TextStyle(fontSize: 15.sp, color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Container(
                      height: 100.h,
                      width: 360.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r), color: Colors.white),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.w),
                            child: Image.asset("assets/Photo Profile (2).png"),
                          ),
                          SizedBox(width: 10.w),
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 24.h, right: 45.w),
                                child: Text(
                                  "Leslie Alexander",
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(height: 6.h),
                              Padding(
                                padding: EdgeInsets.only(right: 40.w),
                                child: Text(
                                  "Your Order Just Arrived!",
                                  style: TextStyle(
                                    fontSize: 10.sp,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 30.w),
                          Padding(
                            padding: EdgeInsets.only(bottom: 41.h),
                            child: Text(
                              "20:00",
                              style: TextStyle(fontSize: 15.sp, color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
