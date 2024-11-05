import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/Model/Data.dart';
import 'package:food_app/View/App_Screens/Filterscreen.dart';

class ExploreMenu extends StatefulWidget {
  const ExploreMenu({super.key});

  @override
  State<ExploreMenu> createState() => _ExploreMenuState();
}

class _ExploreMenuState extends State<ExploreMenu> {
  int counter = 1;
  List<Map<String, dynamic>> ExploreMenuList = [
    {
      "title": "Herbal Pancake",
      "subtitle": "Warung Herbal",
      "price": "\$7",
      "image": "assets/Herbal.png",
      "food": "herbal",
      "id": "1",
      "count": 1
    },
    {
      "title": "Fruit Salad",
      "subtitle": "Wihie Resto",
      "price": "\$5",
      "image": "assets/FruitSalad.png",
      "food": "soup",
      "id": "2",
      "count": 1
    },
    {
      "title": "Green Noddle",
      "subtitle": "Noddle Home",
      "price": "\$15",
      "image": "assets/PhotoMenu.png",
      "food": "soup",
      "id": "3",
      "count": 1
    },
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
            padding: EdgeInsets.all(12.w),
            child: SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
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
                          color: const Color.fromRGBO(250, 253, 255, 1),
                        ),
                        child: IconButton(
                          iconSize: 30.sp,
                          color: const Color.fromRGBO(83, 232, 139, 1),
                          onPressed: () {},
                          icon: const Icon(
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
                          style:
                              TextStyle(color: Colors.black, fontSize: 16.sp),
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                              size: 24.sp,
                            ),
                            prefixIconColor:
                                const Color.fromRGBO(218, 99, 23, 1.6),
                            hintText: 'What do you want to order?',
                            hintStyle: TextStyle(
                              color: const Color.fromRGBO(218, 99, 23, 1.6),
                              fontSize: 16.sp,
                            ),
                            fillColor:
                                const Color.fromRGBO(249, 168, 77, 0.215),
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
                            size: 25.sp,
                            color: const Color.fromRGBO(218, 99, 23, 1.6),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    children: [
                      Text(
                        "Popular Menu",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.sp,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Container(
                    height: 550.h,
                    child: ListView.builder(
                      itemCount: ExploreMenuList.length,
                      itemBuilder: (context, index) {
                        var menuItem = ExploreMenuList[index];
                        return InkWell(
                          onTap: () {
                            if (cartItems.contains(ExploreMenuList[index])) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                      '${menuItem['title']} Already added to your cart'),
                                  duration: Duration(seconds: 2),
                                ),
                              );
                              counter++;
                            } else {
                              cartItems.add(ExploreMenuList[index]);
                            }
                          },
                          child: Container(
                            height: 120.h,
                            child: ListTile(
                              leading: Image.asset(
                                menuItem["image"]!,
                                width: 40.w,
                                height: 64.h,
                                fit: BoxFit.contain,
                              ),
                              title: Text(
                                menuItem["title"]!,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.sp,
                                ),
                              ),
                              subtitle: Text(
                                menuItem["subtitle"]!,
                                style: TextStyle(fontSize: 14.sp),
                              ),
                              trailing: Text(
                                menuItem["price"]!,
                                style: TextStyle(
                                  fontSize: 23.sp,
                                  color: const Color.fromRGBO(254, 173, 29, 1),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
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
