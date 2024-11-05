import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/View/BottomNavBar/BottomNav.dart';
import 'package:food_app/View/Checkout/Payments.dart';
import 'package:food_app/View/Checkout/Your_orders.dart';
import 'package:food_app/View/DetailPages/DetailProduct.dart';
import 'package:food_app/View/onboarding/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'First Method',
            theme: ThemeData(
              primarySwatch: Colors.green,
              textTheme: Typography().black,
            ),
            home: child,
          );
        },
        child: Bottomnav());
  }
}
