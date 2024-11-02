import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Orderdetails extends StatefulWidget {
  const Orderdetails({super.key});

  @override
  State<Orderdetails> createState() => _OrderdetailsState();
}

class _OrderdetailsState extends State<Orderdetails> {
  int number = 1;

  void increment() {
    setState(() {
      number++;
    });
  }

  void decrement() {
    if (number > 1) {
      setState(() {
        number--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
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
              padding: EdgeInsets.all(15.w),  
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20.h), 
                    Text(
                      'Order details',
                      style: TextStyle(
                        fontSize: 30.sp, 
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20.h),  
                    Container(
                      width: 347.w,
                      height: 120.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        color: Colors.white,  
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(12.w),  
                        child: Row(
                          children: [
                            Container(
                              width: 62.w,
                              height: 62.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.r),
                                color: Colors.grey.shade200,  // Fallback color
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15.r),
                                child: Image.asset("assets/FruitSalad.png"),
                              ),
                            ),
                            SizedBox(width: 10.w),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 10.h),
                                  Text(
                                    "Spicy Fresh Crab",
                                    style: TextStyle(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Waroenk Kita",
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      color: Color.fromRGBO(59, 59, 59, 1),
                                    ),
                                  ),
                                  SizedBox(height: 5.h),
                                  Text(
                                    "\$ 35",
                                    style: TextStyle(
                                      fontSize: 19.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(83, 232, 139, 1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 30.w),
                            _buildQuantityButton(Icons.remove, decrement),
                            SizedBox(width: 10.w),
                            Text("$number", style: TextStyle(fontSize: 16.sp)),
                            SizedBox(width: 15.w),
                            _buildQuantityButton(Icons.add, increment),
                          ],
                        ),
                      ),
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

  Widget _buildQuantityButton(IconData icon, VoidCallback onPressed) {
    return Container(
      width: 26.w,
      height: 26.h,
      decoration: BoxDecoration(
        color: Color.fromRGBO(31, 233, 108, 0.303),
        borderRadius: BorderRadius.circular(13.r),
      ),
      child: InkWell(
        onTap: onPressed,
        child: Icon(icon, color: Color.fromRGBO(0, 167, 64, 1)),
      ),
    );
  }
}
