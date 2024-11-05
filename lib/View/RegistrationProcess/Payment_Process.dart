import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/View/RegistrationProcess/Upload_Photo.dart';

class PaymentProcess extends StatefulWidget {
  const PaymentProcess({super.key});

  @override
  State<PaymentProcess> createState() => _PaymentProcessState();
}

class _PaymentProcessState extends State<PaymentProcess> {
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
                    'Payment Method',
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
                  SizedBox(height: 20.h),
                  InkWell(
                    onTap: () {
                      selectedIndex = selectedIndex == 1 ? 0 : 1;
                      setState(() {});
                    },
                    child: Container(
                        width: double.infinity,
                        height: 73.h,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 253, 253, 1),
                            borderRadius: BorderRadius.circular(20.r),
                            border: Border.all(
                                color: selectedIndex == 1
                                    ? Colors.green
                                    : Colors.transparent,
                                width: 1.5)),
                        child: Center(
                          child: Image.asset("assets/paypal.png"),
                        )),
                  ),
                  SizedBox(height: 20.h),
                  InkWell(
                    onTap: () {
                      selectedIndex = selectedIndex == 2 ? 0 : 2;
                      setState(() {});
                    },
                    child: Container(
                        width: double.infinity,
                        height: 73.h,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 253, 253, 1),
                            borderRadius: BorderRadius.circular(20.r),
                            border: Border.all(
                                color: selectedIndex == 2
                                    ? Colors.green
                                    : Colors.transparent,
                                width: 1.5)),
                        child: Center(
                          child: Image.asset("assets/visa.png"),
                        )),
                  ),
                  SizedBox(height: 20.h),
                  InkWell(
                    onTap: () {
                      selectedIndex = selectedIndex == 3 ? 0 : 3;
                      setState(() {});
                    },
                    child: Container(
                        width: double.infinity,
                        height: 73.h,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 253, 253, 1),
                            borderRadius: BorderRadius.circular(20.r),
                            border: Border.all(
                                color: selectedIndex == 3
                                    ? Colors.green
                                    : Colors.transparent,
                                width: 1.5)),
                        child: Center(
                          child: Image.asset("assets/Payoneer.png"),
                        )),
                  ),
                  SizedBox(height: 200.h),
                  InkWell(
                      enableFeedback: true,
                      onTap: () {
                        if (selectedIndex != 0) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => UploadPhoto(),
                              ));
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                                content: Text(
                                    'Please select an option before proceeding')),
                          );
                        }
                      },
                      child: Center(
                          child: Container(
                        width: 157.w,
                        height: 57.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
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
                              fontSize: 16.sp),
                        )),
                      ))),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
