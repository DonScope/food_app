import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/View/App_Screens/Explore_Menu.dart';

class Detailproduct extends StatefulWidget {
  const Detailproduct({super.key});

  @override
  State<Detailproduct> createState() => _DetailproductState();
}

class _DetailproductState extends State<Detailproduct> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      showProductDetails(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width.w,
        height: MediaQuery.of(context).size.height *0.5.h,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/background.png',
                ),
                fit: BoxFit.cover)),
      ),
    );
  }

  void showProductDetails(BuildContext context) {
    showModalBottomSheet(
      isDismissible: false,
      enableDrag: false,
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
      ),
      builder: (context) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
          child: Container(
            height: 520.h,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 76.w,
                        height: 34.h,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(colors: [
                              Color.fromRGBO(83, 232, 139, 1),
                              Color.fromRGBO(21, 190, 119, 1)
                            ])),
                        child: Center(
                            child: Text(
                          "Popular",
                          style: TextStyle(color: Colors.green),
                        )),
                      ),
                      Spacer(),
                      Container(
                        width: 34.w,
                        height: 34.h,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(colors: [
                              Color.fromRGBO(83, 232, 139, 1),
                              Color.fromRGBO(21, 190, 119, 1)
                            ])),
                        child: Center(
                            child: Icon(
                          Icons.location_on,
                          color: Colors.green,
                        )),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 34.w,
                          height: 34.h,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(15),
                              gradient: LinearGradient(colors: [
                                Color.fromRGBO(255, 29, 29, 1),
                                Color.fromRGBO(255, 0, 0, 1)
                              ])),
                          child: Center(
                              child: Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    "Wijie Bar and Resto",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25.sp),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.green,
                      ),
                      Text(
                        "19 Km",
                        style: TextStyle(fontSize: 15.sp, color: Colors.grey),
                      ),
                      SizedBox(width: 15.w),
                      Icon(
                        Icons.star,
                        color: Colors.green,
                      ),
                      Text(
                        "4.5 Rating",
                        style: TextStyle(fontSize: 15.sp, color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Text(
                      "Most whole Alaskan Red King Crabs get broken down into legs, claws, and lump meat. We offer all of these options as well in our online shop, but there is nothing like getting the whole . . . ."),
                  SizedBox(height: 20.h),
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
                  SizedBox(
                    height: 15.h,
                  ),
                  Container(
                    height: 171.h,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Container(
                            height: 171.h,
                            width: 147,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(22.r),
                                color: Colors.white),
                            child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 73.h,
                                    width: 96.w,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/Pasta.png"),
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
                          );
                        },
                        separatorBuilder: (context, index) => SizedBox(
                              width: 10,
                            ),
                        itemCount: 4),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    'Testimonials',
                    style: TextStyle(
                      fontSize: 15.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  buildChatItem(
                      "Dianne Russell",
                      "This Is great, So delicious! You Must Here, With Your family . . ",
                      "12 April 2021",
                      "assets/Dianne.png"),
                      SizedBox(height: 10.h),
                           buildChatItem(
                      "Dianne Russell",
                      "This Is great, So delicious! You Must Here, With Your family . . ",
                      "12 April 2021",
                      "assets/Photo Profile (2).png"),

                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget buildChatItem(
      String name, String message, String time, String profileImage) {
    return Container(
      height: 128.h,
      width: 336.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(8.w),
            child: Image.asset(profileImage, width: 64.w, height: 64.h),
          ),
          SizedBox(width: 10.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 5.h, right: 30.w),
                  child: Text(
                    name,
                    style: TextStyle(
                      fontSize: 15.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 6.h),
                Text(
                  time,
                  style: TextStyle(fontSize: 12.sp, color: Colors.grey),
                ),
                SizedBox(height: 6.h),
                Text(
                  message,
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
