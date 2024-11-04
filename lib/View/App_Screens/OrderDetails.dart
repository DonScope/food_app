import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/Model/Data.dart';

class Orderdetails extends StatefulWidget {
  final Map<String, String>? item;
  final int? counter;
  const Orderdetails({this.item, this.counter});

  @override
  State<Orderdetails> createState() => _OrderdetailsState();
}

class _OrderdetailsState extends State<Orderdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    ListView.separated(
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      itemCount: cartItems.length,
                      separatorBuilder: (context, index) => SizedBox(
                        height: 15.h,
                      ),
                      itemBuilder: (context, index) {
                        var items = cartItems[index];
                        return Dismissible(
                          direction: DismissDirection.endToStart,
                          onDismissed: (direction) {
                            if (direction == DismissDirection.endToStart) {
                              setState(() {
                                cartItems.removeAt(index);
                              });
                            }

                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content:
                                    Text('${items['title']} removed from menu'),
                                duration: Duration(seconds: 2),
                              ),
                            );
                          },
                          background: Container(
                            height: 50.h,
                            color: Colors.orange,
                            padding: EdgeInsets.only(right: 30),
                            margin: EdgeInsets.only(top: 10),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Icon(
                                Icons.delete,
                                color: Colors.white,
                                size: 30.sp,
                              ),
                            ),
                          ),
                          key: Key(items["id"].toString()),
                          child: Container(
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
                                      color: Colors.grey.shade200,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15.r),
                                      child: Image.asset(
                                          items["image"].toString()),
                                    ),
                                  ),
                                  SizedBox(width: 10.w),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 10.h),
                                        Text(
                                          items["title"].toString(),
                                          style: TextStyle(
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          items["subtitle"].toString(),
                                          style: TextStyle(
                                            fontSize: 14.sp,
                                            color:
                                                Color.fromRGBO(59, 59, 59, 1),
                                          ),
                                        ),
                                        SizedBox(height: 5.h),
                                        Text(
                                          items["price"].toString(),
                                          style: TextStyle(
                                            fontSize: 19.sp,
                                            fontWeight: FontWeight.bold,
                                            color:
                                                Color.fromRGBO(83, 232, 139, 1),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 30.w),
                                  _buildQuantityButton(
                                    Icons.remove,
                                    () {
                                      setState(() {
                                        if (items["count"] > 1) {
                                          items["count"]--;
                                        }
                                      });
                                    },
                                  ),
                                  SizedBox(width: 10.w),
                                  Text("${items["count"]}",
                                      style: TextStyle(fontSize: 16.sp)),
                                  SizedBox(width: 15.w),
                                  _buildQuantityButton(
                                    Icons.add,
                                    () {
                                      setState(() {
                                        items["count"]++;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
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
