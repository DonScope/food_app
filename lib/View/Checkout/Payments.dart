import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/View/Checkout/EditLocation.dart';
import 'package:food_app/View/Checkout/EditPayments.dart';
import 'package:food_app/View/Checkout/Your_orders.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          padding: EdgeInsets.all(10.r),
          margin: EdgeInsets.only(right: 15, left: 15, bottom: 15),
          height: 206.h,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/order_pic.png"), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(16.r),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromRGBO(83, 232, 139, 1), 
                Color.fromRGBO(21, 190, 119, 1),
              ],
            ),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(15.r),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sub-Total",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text("Delivery Charge",
                            style: TextStyle(color: Colors.white)),
                        Text("Discount", style: TextStyle(color: Colors.white)),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text("Total",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.sp)),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(15.r),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "10",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text("10", style: TextStyle(color: Colors.white)),
                        Text("10", style: TextStyle(color: Colors.white)),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text("10",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.sp)),
                      ],
                    ),
                  )
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => YourOrders()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 55.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: Colors.white),
                  child: Center(
                    child: Text(
                      "Place My Order",
                      style:
                          TextStyle(color: Colors.greenAccent, fontSize: 14.sp),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
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
                  "Confirm Order",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 25.sp),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  padding: EdgeInsets.all(15.r),
                  width: MediaQuery.of(context).size.width,
                  height: 108.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22.r),
                      color: Colors.white),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Deliver To",
                            style:
                                TextStyle(color: Colors.grey, fontSize: 14.sp),
                          ),
                          InkWell(
                            onTap: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context) => Editlocation(),));
                            },
                            child: Text(
                              "Edit",
                              style: TextStyle(
                                  color: Colors.greenAccent, fontSize: 14.sp),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
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
                            "4517 Washington Ave. Manchester,\nKentucky 39495",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15.sp),
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
                  padding: EdgeInsets.all(15.r),
                  width: MediaQuery.of(context).size.width,
                  height: 108.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22.r),
                      color: Colors.white),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Payment Method",
                            style:
                                TextStyle(color: Colors.grey, fontSize: 14.sp),
                          ),
                          TextButton(
                              onPressed: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context) => Editpayment(),));
                              },
                              child: Text(
                                "Edit",
                                style: TextStyle(
                                    color: Colors.greenAccent, fontSize: 14.sp),
                              ))
                        ],
                      ),
                     
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 86.w,
                            height: 23.h,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage("assets/paypal.png"),
                            )),
                          ),
                          Text(
                            "2121 6352 8465 ****",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15.sp),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}