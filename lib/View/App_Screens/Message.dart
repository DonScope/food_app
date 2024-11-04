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
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Bottomnav()),
            );
          },
          icon: Image.asset("assets/Icon Back.png", width: 24.w, height: 24.h),
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
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15.h),
                    buildChatItem("Anamwp", "Your Order Just Arrived!", "20:00",
                        "assets/Photo Profile.png"),
                    SizedBox(height: 20.h),
                    buildChatItem("Guy Hawkins", "Your Order Just Arrived!",
                        "20:00", "assets/Photo Profile (1).png"),
                    SizedBox(height: 20.h),
                    buildChatItem(
                        "Leslie Alexander",
                        "Your Order Just Arrived!",
                        "20:00",
                        "assets/Photo Profile (2).png"),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildChatItem(
      String name, String message, String time, String profileImage) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Details()));
      },
      child: Container(
        height: 100.h,
        width: 360.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: Colors.white,
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.all(8.w),
              child: Image.asset(profileImage, width: 50.w, height: 50.h),
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 24.h, right: 45.w),
                    child: Text(
                      name,
                      style: TextStyle(
                        fontSize: 15.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 6.h),
                  Text(
                    message,
                    style: TextStyle(
                      fontSize: 10.sp,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 41.h, right: 30.w),
              child: Text(
                time,
                style: TextStyle(fontSize: 15.sp, color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
