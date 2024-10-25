import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/View/App_Screens/Voucherscreen.dart';
import 'package:food_app/View/Widgets/CustomButton.dart';
import 'package:food_app/View/Widgets/CustomTextFieldWithImage.dart';

class Rateresturant extends StatefulWidget {
  const Rateresturant({super.key});

  @override
  State<Rateresturant> createState() => _RateresturantState();
}

class _RateresturantState extends State<Rateresturant> {
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
                      'assets/vegan1.png',
                      height: 203.h,
                      width: 188.w,
                      fit: BoxFit.contain,
                    ),
                    Text(
                      "     Thank You! \nEnjoy Your Meal",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Please rate your Restaurant",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 35),
                    Image.asset(
                      'assets/Staricon.png',
                      height: 33.h,
                      width: 253.w,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(height: 45),
                    Container(
                        width: 350,
                        height: 55,
                        child: Customtextfieldwithimage(
                          hintText: "Leave feedback",
                          image: "assets/editicon.png",
                        )),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(context,MaterialPageRoute(builder: (context) => voucher(),));
                          },
                          child: CustomButton(text: "Submit")),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            padding: EdgeInsets.symmetric(
                                horizontal: 24, vertical: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            elevation: 0,
                          ),
                          child: Text(
                            'Skip',
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 16,
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