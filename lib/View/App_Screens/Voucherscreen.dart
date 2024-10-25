import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class voucher extends StatefulWidget {
  const voucher({super.key});

  @override
  State<voucher> createState() => _voucherState();
}

class _voucherState extends State<voucher> {
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
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Voucher Promo',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 20,),

                      CustomContainer("Frame.png"),
                      SizedBox (height: 20),
                            CustomContainer("Frame2.png")
                    ],
                  ),
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
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        children: [
          Image.asset("assets/$img", fit: BoxFit.contain),
          Positioned(
            right: 5,
            top: 8.0,
            child: Text(
              "Special Deal For \nOctober",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.start,
            ),
          ),
          Positioned(
            right: 60,
            bottom: 10,
            child: InkWell(
              onTap: () {},
              child: Container(
                width: 100.w,
                height: 40.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text(
                    "Order Now",
                    style: TextStyle(
                        fontSize: 16,
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
