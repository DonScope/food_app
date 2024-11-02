import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/View/App_Screens/Notificationscreen.dart';
import 'package:food_app/View/Widgets/CustomButton.dart';

class Voucher extends StatefulWidget {
  const Voucher({super.key});

  @override
  State<Voucher> createState() => _VoucherState();
}

class _VoucherState extends State<Voucher> {
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
          icon: Image.asset("assets/Icon Back.png", width: 60.w, height: 40.h),
        ),
      ),
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Image.asset(
            'assets/Pattern2.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Positioned(
            top: 80.h,
            child: Container(
              padding: EdgeInsets.all(10.w),
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: EdgeInsets.all(12.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Voucher Promo',
                      style: TextStyle(
                          fontSize: 30.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20.h),
                    CustomContainer("Frame.png"),
                    SizedBox(height: 20.h),
                    CustomContainer("Frame2.png"),
                    SizedBox(height: 250.h), // Spacer for layout
                    InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NotificationScreen()),
                      ),
                      child: Center(child: CustomButton(text: "Check Out")),
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

  CustomContainer(String img) {
    return Container(
      width: 321.w,
      height: 130.h,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(12.r), // Make border radius responsive
      ),
      child: Stack(
        children: [
          Image.asset("assets/$img", fit: BoxFit.contain),
          Positioned(
            right: 5.w,
            top: 8.0.h,
            child: Text(
              "Special Deal For \nOctober",
              style: TextStyle(
                fontSize: 20.sp,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.start,
            ),
          ),
          Positioned(
            right: 60.w,
            bottom: 10.h,
            child: InkWell(
              onTap: () {},
              child: Container(
                width: 100.w,
                height: 40.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.r),
                ),
                child: Center(
                  child: Text(
                    "Order Now",
                    style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.greenAccent,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
