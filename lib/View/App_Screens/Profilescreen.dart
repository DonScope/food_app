import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Profilescreen extends StatefulWidget {
  const Profilescreen({super.key});

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
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
        height: MediaQuery.of(context).size.height * 0.4.h,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/Profileimage.png',
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
                  Container(
                    width: 111.w,
                    height: 34.h,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(colors: [
                          Color.fromRGBO(254, 173, 29, 1),
                          Color.fromRGBO(254, 173, 29, 1)
                        ])),
                    child: Center(
                        child: Text(
                      "Member Gold",
                      style: TextStyle(color: Colors.amber),
                    )),
                  ),
                  SizedBox(height: 15.h),
                  Row(
                    children: [
                      Text(
                        "Anam Wusono",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 27.sp),
                      ),
                      Spacer(),
                      InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.edit,
                            color: Colors.green,
                          )),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    "anamwp66@gmail.com",
                    style: TextStyle(color: Colors.grey, fontSize: 14.sp),
                  ),
                  SizedBox(height: 15.h),
                  Container(
                      height: 64.h,
                      width: 347.w,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 45.w,
                            height: 43.h,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/Voucher.png"))),
                          ),
                          SizedBox(width: 10.w),
                          Text("You Have 3 Vouchers",
                              style: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.bold)),
                        ],
                      )),
                  SizedBox(height: 15.h),
                  Text(
                    'Favorite',
                    style: TextStyle(
                      fontSize: 15.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                     SizedBox(height: 15.h),
                  buildfoodItem("Spacy fresh crab", "Waroenk kita", "\$ 35", "assets/FruitSalad.png"),
                   SizedBox(height: 10.h),
                     buildfoodItem("Spacy fresh crab", "Waroenk kita", "\$ 35", "assets/MenuPhoto2.png"),
                        SizedBox(height: 10.h),
                        buildfoodItem("Spacy fresh crab", "Waroenk kita", "\$ 35", "assets/Herbal.png"),
                           SizedBox(height: 10.h),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
  Widget buildfoodItem(
    String title,
    String subtitle,
    String price,
    String foodImage,
  ) {
    return Container(
      height: 103.h,
      width: 347.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: Colors.white),
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
                  padding: EdgeInsets.only(top: 4.h, right: 45.w),
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
                    fontSize: 14.sp,
                    color:  Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10.r),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor:
                         Colors.greenAccent),
                onPressed: () {},
                child: Text(
                  "Buy again",
                  style: TextStyle(color: Colors.white),
                )),
          )
        ],
      ),
    );
  }
}
