import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/View/App_Screens/Filterscreen.dart';

class ExploreRestaurant extends StatefulWidget {
  const ExploreRestaurant({super.key});

  @override
  State<ExploreRestaurant> createState() => _ExploreRestaurantState();
}

class _ExploreRestaurantState extends State<ExploreRestaurant> {
  List<Map<String, String>> items = [
    {
      'image': 'assets/Vegan.png',
      'mainText': 'Vegan Resto',
      'smallText': '12 Mins',
    },
    {
      'image': 'assets/Healthy.png',
      'mainText': 'Healthy Food',
      'smallText': '8 Mins',
    },
    {
      'image': 'assets/GoodFood.png',
      'mainText': 'Good Food',
      'smallText': '12 Mins',
    },
    {
      'image': 'assets/SmartResto.png',
      'mainText': 'Smart Resto',
      'smallText': '8 Mins',
    },
    {
      'image': 'assets/VeganResto.png',
      'mainText': 'Vegan Resto',
      'smallText': '12 Mins',
    },
    {
      'image': 'assets/HealthyFood.png',
      'mainText': 'Healthy Food',
      'smallText': '8 Mins',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      Column(children: [
        Padding(
          padding: EdgeInsets.only(top: 25.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Find Your \nFavorite Food",
                style: TextStyle(
                  fontSize: 31.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromRGBO(9, 5, 28, 1),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(250, 253, 255, 1),
                  borderRadius: BorderRadius.circular(15.r),
                ),
                width: 45.w,
                height: 45.h,
                child: Stack(
                  children: [
                    Center(
                      child: Icon(
                        Icons.notifications_none_outlined,
                        color: const Color.fromRGBO(83, 232, 139, 1),
                        size: 30.sp,
                      ),
                    ),
                    Positioned(
                      right: 6.w,
                      top: 6.h,
                      child: Container(
                        width: 6.w,
                        height: 6.h,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10.h, left: 15.w, right: 20.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 270.w,
                child: TextField(
                  style: TextStyle(color: Colors.black, fontSize: 14.sp),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search, size: 24.sp),
                    prefixIconColor: const Color.fromRGBO(218, 99, 23, 1.6),
                    hintText: 'What do you want to order?',
                    hintStyle: TextStyle(
                      color: const Color.fromRGBO(218, 99, 23, 1.6),
                      fontSize: 16.sp,
                    ),
                    fillColor: const Color.fromRGBO(249, 168, 77, 0.215),
                    filled: true,
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 20.h,
                      horizontal: 16.w,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.r),
                      borderSide: const BorderSide(
                        color: Colors.white,
                        width: 0.5,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.r),
                      borderSide: const BorderSide(
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
                  color: const Color.fromRGBO(249, 169, 77, 0.215),
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
                    color: const Color.fromRGBO(218, 99, 23, 1.6),
                    size: 24.sp,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 30.w, top: 20.h),
          child: Row(
            children: [
              Text(
                "Popular Restaurant",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.sp,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.w),
          child: GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20.w,
              mainAxisSpacing: 30.h,
              childAspectRatio: 0.85,
            ),
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Container(
                width: 100.w,
                height: 10.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.r),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.h),
                      child: CircleAvatar(
                        radius: 50.r,
                        backgroundImage: AssetImage(items[index]['image']!),
                        backgroundColor: Colors.white,
                      ),
                    ),
                    Text(
                      items[index]['mainText']!,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                      ),
                    ),
                    Text(
                      items[index]['smallText']!,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13.sp,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ]),
    ]));
  }
}
