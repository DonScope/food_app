import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/View/App_Screens/ExploreResturants.dart';
import 'package:food_app/View/App_Screens/Explore_Menu.dart';
import 'package:food_app/View/App_Screens/Filterscreen.dart';

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
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/Pattern2.png',
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
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
                    Container(
                      width: double.infinity,
                      height: 200.h,
                      color: Colors.transparent,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: Images.length,
                        itemBuilder: (context, index) {
                          return Container(
                            color: Colors.transparent,
                            height: 200.h,
                            width: 190.w,
                            child: Padding(
                              padding: EdgeInsets.only(top: 12.h),
                              child: Image.asset(
                                Images[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        },
                      ),
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
                      height: 160.h,
                      child: Container(
                        width: double.infinity,
                        height: 140.h,
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
