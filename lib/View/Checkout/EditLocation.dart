import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Editlocation extends StatefulWidget {
  const Editlocation({super.key});

  @override
  State<Editlocation> createState() => _EditlocationState();
}

class _EditlocationState extends State<Editlocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.only(top: 50, right: 20, left: 20),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/Pattern2.png"),
                      fit: BoxFit.cover)),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: 45.w,
                        height: 45.h,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/Icon Back.png"))),
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Text(
                      "Shipping",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 25.sp),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 107.h,
                      padding: EdgeInsets.all(10.r),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(22.r)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Order Location",
                            style:
                                TextStyle(color: Colors.grey, fontSize: 14.sp),
                          ),
                          Row(
                            children: [
                              Container(
                                width: 33.w,
                                height: 33.h,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                  image: AssetImage("assets/Pin Logo.png"),
                                )),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                "8502 Preston Rd. Inglewood,\n Maine 98380",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.sp),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(10.r),
                      height: 141.h,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(22.r)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Deliver To",
                            style:
                                TextStyle(color: Colors.grey, fontSize: 14.sp),
                          ),
                          Row(
                            children: [
                              Container(
                                width: 33.w,
                                height: 33.h,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                  image: AssetImage("assets/Pin Logo.png"),
                                )),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                "4517 Washington Ave. Manchester,\n Kentucky 39495",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.sp),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ]))),
    );
  }
}
