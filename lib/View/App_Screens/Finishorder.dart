import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/View/App_Screens/Ratefood.dart';
import 'package:food_app/View/App_Screens/Voucherscreen.dart';
import 'package:food_app/View/Widgets/CustomButton.dart';
import 'package:food_app/View/Widgets/CustomTextFieldWithImage.dart';

class Finishorder extends StatefulWidget {
  const Finishorder({super.key});

  @override
  State<Finishorder> createState() => _FinishorderState();
}

class _FinishorderState extends State<Finishorder> {
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
            top: 200.h,
            child: Container(
              padding: EdgeInsets.all(10.w),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/man.png',
                      height: 203.h,
                      width: 188.w,
                      fit: BoxFit.contain,
                    ),
                    Text(
                      "     Thank You! \nOrder Completed",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15.h),
                    Text(
                      "Please rate your last Driver",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 35.h),
                    Image.asset(
                      'assets/Staricon.png',
                      height: 33.h,
                      width: 253.w,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(height: 45.h),
                    Container(
                      width: 350.w,
                      height: 55.h,
                      child: Customtextfieldwithimage(
                        hintText: "Leave feedback",
                        image: "assets/editicon.png",
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Ratefood(),
                              ),
                            );
                          },
                          child: CustomButton(text: "Submit"),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Voucher(),
                                ));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            padding: EdgeInsets.symmetric(
                                horizontal: 24.w, vertical: 12.h),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.r),
                            ),
                            elevation: 0,
                          ),
                          child: Text(
                            'Skip',
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
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
}
