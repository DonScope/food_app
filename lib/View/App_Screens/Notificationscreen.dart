import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  final List<Map<String, String>> notifications = [
    {
      'message': 'Your order has been taken by the driver',
      'time': 'Recently',
      'icon': 'assets/checked.png',
    },
    {
      'message': 'Topup for \$100 was successful',
      'time': '10.00 AM',
      'icon': 'assets/Coin.png',
    },
    {
      'message': 'Your order has been canceled',
      'time': '22 June 2021',
      'icon': 'assets/Xbutton.png',
    },
  ];

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
              padding: EdgeInsets.all(12),
              child: ListView.builder(
                itemCount: notifications.length,
                itemBuilder: (context, index) {
                  final notification = notifications[index];
                  return Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.h, horizontal: 16.w),
                    width: 350.w,
                    height: 105.h,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(12, 221, 221, 221),
                      borderRadius: BorderRadius.circular(20.r),
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
                          child: Image.asset(notification['icon']!),
                        ),
                        SizedBox(width: 12.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              notification['message']!,
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 4.h),
                            Text(
                              notification['time']!,
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14.sp,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
