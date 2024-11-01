import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/View/App_Screens/Finishorder.dart';
import 'package:food_app/View/App_Screens/Ratefood.dart';

class CallRinging extends StatefulWidget {
  const CallRinging({super.key});

  @override
  State<CallRinging> createState() => _CallRingingState();
}

class _CallRingingState extends State<CallRinging> {
  bool isRinging = false;
  bool onMute = false;
  Timer? timer;
  int seconds = 0;
  int minutes = 0;
  int hours = 0;

  @override
  void initState() {
    startCallTimer();
    Future.delayed(Duration(seconds: 5), () {
      isRinging = true;
      setState(() {});
    });
    super.initState();
  }

  void startCallTimer() {
    Future.delayed(Duration(seconds: 5), () {
      timer = Timer.periodic(Duration(seconds: 1), (timer) {
        setState(() {
          seconds++;
          if (seconds == 60) {
            seconds = 0;
            minutes++;
          }
          if (minutes == 60) {
            minutes = 0;
            hours++;
          }
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    String formattedTime = hours.toString().padLeft(2, '0') +
        ':' +
        minutes.toString().padLeft(2, '0') +
        ':' +
        seconds.toString().padLeft(2, '0');
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
                      'assets/ManImage.png',
                      height: 203.h,
                      width: 188.w,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(height: 30),
                    Text(
                      "Courtney Henry",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15),
                    isRinging == false
                        ? Text(
                            "Ringing...",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        : Text(
                            "$formattedTime",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                    SizedBox(height: 170),
                    Row(
                      children: [
                        InkWell(
                            onTap: () {
                              onMute = !onMute;
                            },
                            child: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.greenAccent),
                              child: Center(
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      image: DecorationImage(
                                          image: onMute == false
                                              ? AssetImage(
                                                  "assets/volumeup.png")
                                              : AssetImage("assets/muted.png"),
                                          fit: BoxFit.contain)),
                                ),
                              ),
                            )),
                        SizedBox(width: 30),
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Finishorder(),
                                  ));
                            },
                            child: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.redAccent),
                              child: Center(
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      image: DecorationImage(
                                          image:
                                              AssetImage("assets/Xbutton.png"),
                                          fit: BoxFit.contain)),
                                ),
                              ),
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    startCallTimer();
    super.dispose();
  }
}
