import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/View/App_Screens/Filterscreen.dart';
import 'package:food_app/View/Widgets/CustomButton.dart';

class YourOrders extends StatefulWidget {
  const YourOrders({super.key});

  @override
  State<YourOrders> createState() => _YourOrdersState();
}

class _YourOrdersState extends State<YourOrders> {
  List<Map<String, dynamic>> CheckoutOrders = [
    {
      "title": "Spicy fresh crab",
      "subtitle": "Waroenk kita",
      "price": "\$ 35",
      "image": "assets/Pasta.png",
    },
    {
      "title": "Spicy fresh crab",
      "subtitle": "Waroenk kita",
      "price": "\$ 35",
      "image": "assets/PhotoMenu.png",
    },
    {
      "title": "Spacy fresh crab",
      "subtitle": "Waroenk kita",
      "price": "\$ 35",
      "image": "assets/MenuPhoto1.png",
    },
    {
      "title": "Spacy fresh crab",
      "subtitle": "Waroenk kita",
      "price": "\$ 35",
      "image": "assets/MenuPhoto2.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Pattern2.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(12.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                SizedBox(height: 10),
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
                SizedBox(height: 15.h),
                Expanded(
                  child: ListView.separated(
                    itemCount: CheckoutOrders.length,
                    separatorBuilder: (context, index) => SizedBox(
                      height: 20.h,
                    ),
                    itemBuilder: (context, i) {
                      return buildChatItem(
                        CheckoutOrders[i]["title"],
                        CheckoutOrders[i]["subtitle"],
                        CheckoutOrders[i]["price"],
                        CheckoutOrders[i]["image"],
                        i,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(10.r),
        margin: EdgeInsets.only(right: 15, left: 15, bottom: 15),
        child: CustomButton(text: "Check out"),
      ),
    );
  }

  Widget buildChatItem(
    String title,
    String subtitle,
    String price,
    String foodImage,
    int index,
  ) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 100.h,
        width: 380.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            color: index > 1 ? Colors.white60 : Colors.white),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.all(8.w),
              child: Image.asset(foodImage, width: 62.w, height: 62.h),
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 15.h, right: 45.w),
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 15.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 6.h),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    price,
                    style: TextStyle(
                      fontSize: 19.sp,
                      color: index > 1 ? Color.fromRGBO(223, 222, 222, 1) : Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor:
                        index > 1 ? Colors.white60 : Colors.greenAccent),
                onPressed: () {},
                child: Text(
                  "Process",
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
