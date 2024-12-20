import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/View/App_Screens/ExploreResturants.dart';
import 'package:food_app/View/App_Screens/Explore_Menu.dart';
import 'package:food_app/View/App_Screens/Filterscreen.dart';
import 'package:food_app/View/DetailPages/DetailProduct.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<String> Images = [
    "assets/Restaurant1.png",
    "assets/Restaurant2.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
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
            padding: EdgeInsets.all(15.w),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Find Your \nFavorite Food',
                        style: TextStyle(
                          fontSize: 30.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        width: 45.w,
                        height: 45.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          color: Color.fromRGBO(250, 253, 255, 1),
                        ),
                        child: IconButton(
                          iconSize: 30.sp,
                          color: Color.fromRGBO(83, 232, 139, 1),
                          onPressed: () {},
                          icon: Icon(
                            Icons.notifications_none_outlined,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 270.w,
                        child: TextField(
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            prefixIconColor: Color.fromRGBO(218, 99, 23, 1.6),
                            hintText: 'What do you want to order?',
                            hintStyle: TextStyle(
                              color: Color.fromRGBO(218, 99, 23, 1.6),
                              fontSize: 16.sp,
                            ),
                            fillColor: Color.fromRGBO(249, 168, 77, 0.215),
                            filled: true,
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 20.0.h,
                              horizontal: 16.0.w,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0.r),
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 0.5,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0.r),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0.r),
                              borderSide: BorderSide(
                                color: Colors.green,
                                width: 2.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 49.w,
                        height: 50.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          color: Color.fromRGBO(249, 169, 77, 0.215),
                        ),
                        child: IconButton(
                          iconSize: 25.sp,
                          color: Colors.green,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FilterScreen(),
                              ),
                            );
                          },
                          icon: Icon(
                            Icons.sort,
                            color: Color.fromRGBO(218, 99, 23, 1.6),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Container(
                    width: 340.w,
                    height: 150.h,
                    decoration: BoxDecoration(
                      color: Colors.greenAccent[400],
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Stack(
                      children: [
                        Image.asset("assets/Ad.png", fit: BoxFit.cover),
                        Positioned(
                          right: 4.w,
                          top: 8.0.h,
                          child: Text(
                            "Special Deal For \nOctober",
                            style: TextStyle(
                              fontSize: 25.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Positioned(
                          right: 60.w,
                          bottom: 10.h,
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              width: 130.w,
                              height: 50.h,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15.r),
                              ),
                              child: Center(
                                child: Text(
                                  "Buy Now",
                                  style: TextStyle(
                                    fontSize: 25.sp,
                                    color: Colors.greenAccent,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Nearest Restaurant',
                        style: TextStyle(
                          fontSize: 23.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          elevation: 0,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ExploreRestaurant(),
                            ),
                          );
                        },
                        child: Text(
                          "View More",
                          style: TextStyle(
                            color: Color.fromRGBO(255, 124, 50, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: InkWell(
                            onTap: () {
                                   Navigator.push(context, MaterialPageRoute(builder: (context) => Detailproduct(),));
                            },
                            child: Container(
                                                    height: 184.h,
                                                    decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22.r),
                              color: Colors.white),
                                                    child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 73.h,
                                  width: 96.w,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("assets/Vegan.png"),
                                          fit: BoxFit.cover)),
                                ),
                                Text(
                                  "Vegan Resto",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17.sp),
                                ),
                                Text(
                                  "12 Mins",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13.sp,
                                      color: Colors.grey),
                                )
                              ]),
                                                  ),
                          )),
                      SizedBox(
                        width: 15.w,
                      ),
                      Expanded(
                          child: InkWell(
                            onTap: () {
                                   Navigator.push(context, MaterialPageRoute(builder: (context) => Detailproduct(),));
                            },
                            child: Container(
                                                    height: 184.h,
                                                    decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22.r),
                              color: Colors.white),
                                                    child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 73.h,
                                  width: 96.w,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("assets/Healthy.png"),
                                          fit: BoxFit.cover)),
                                ),
                                Text(
                                  "Healthy Food",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17.sp),
                                ),
                                Text(
                                  "8 Mins",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13.sp,
                                      color: Colors.grey),
                                )
                              ]),
                                                  ),
                          )),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Popular Menu',
                        style: TextStyle(
                          fontSize: 23.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          elevation: 0,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ExploreMenu(),
                            ),
                          );
                        },
                        child: Text(
                          "View More",
                          style: TextStyle(
                            color: Color.fromRGBO(255, 124, 50, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15.h),
                  Container(
                    width: double.infinity,
                    height: 80.h,
                    color: Colors.white,
                    child: Container(
                      width: double.infinity,
                      height: 140.h,
                      child: Center(
                        child: ListTile(
                          leading: Image.asset(
                            "assets/PhotoMenu.png",
                            width: 64.w,
                            height: 64.h,
                          ),
                          title: Text(
                            'Green Noodle',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.sp,
                            ),
                          ),
                          trailing: Text(
                            "\$15",
                            style: TextStyle(
                              fontSize: 23.sp,
                              color: Color.fromRGBO(254, 173, 29, 1),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
