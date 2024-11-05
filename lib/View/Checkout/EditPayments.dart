import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Editpayment extends StatefulWidget {
  const Editpayment({super.key});

  @override
  State<Editpayment> createState() => _EditpaymentState();
}

class _EditpaymentState extends State<Editpayment> {
  List images = [
    "assets/paypal.png",
    "assets/visa.png",
    "assets/Payoneer.png",
  ];
  int num = 0;
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
                image: AssetImage("assets/Pattern2.png"), fit: BoxFit.cover)),
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
              "Payment ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.sp),
            ),
            SizedBox(
              height: 10.h,
            ),
            Column(
              children: List.generate(
                images.length,
                (index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                         num = index;
                      });
                     
                    },
                    child: Container(
                        padding: EdgeInsets.all(15.r),
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.only(bottom: 15),
                        height: 73.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22.r),
                            color:num==index?Colors.white:Colors.grey[300]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 86.w,
                              height: 60.h,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                image: AssetImage(images[index]),
                              )),
                            ),
                            Text(
                              "2121 6352 8465 ****",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15.sp ,color: num==index?Colors.black:Colors.grey),
                            )
                          ],
                        )),
                  );
                },
              ),
            )
          ],
        ),
      ),
    ));
  }
}
//  Container(
//                 padding: EdgeInsets.all(15.r),
//                 width: MediaQuery.of(context).size.width,
//                 height: 73.h,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(22.r),
//                     color: Colors.white),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Container(
//                       width: 86.w,
//                       height: 23.h,
//                       decoration: BoxDecoration(
//                           image: DecorationImage(
//                         image: AssetImage("assets/paypal.png"),
//                       )),
//                     ),
//                     Text(
//                       "2121 6352 8465 ****",
//                       style: TextStyle(
//                           fontWeight: FontWeight.bold, fontSize: 15.sp),
//                     )
//                   ],
//                 )),
//             SizedBox(
//               height: 15.h,
//             ),
//             Container(
//               padding: EdgeInsets.all(15.r),
//               width: MediaQuery.of(context).size.width,
//               height:73.h,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(22.r),
//                   color: Colors.white),
//               child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Container(
//                             width: 60.w,
//                             height: 60.h,
//                             decoration: BoxDecoration(
//                                 image: DecorationImage(
//                               image: AssetImage("assets/visa.png"),
//                             )),
//                           ),
//                           Text(
//                             "2121 6352 8465 ****",
//                             style: TextStyle(
//                                 fontWeight: FontWeight.bold, fontSize: 15.sp),
//                           )
//                         ],
//                       )
//             ),
//              SizedBox(
//               height: 15.h,
//             ),
//             Container(
//               padding: EdgeInsets.all(15.r),
//               width: MediaQuery.of(context).size.width,
//               height: 73.h,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(22.r),
//                   color: Colors.white),
//               child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Container(
//                             width: 83.w,
//                             height: 32.h,
//                             decoration: BoxDecoration(
//                                 image: DecorationImage(
//                               image: AssetImage("assets/Payoneer.png"),
//                             )),
//                           ),
//                           Text(
//                             "2121 6352 8465 ****",
//                             style: TextStyle(
//                                 fontWeight: FontWeight.bold, fontSize: 15.sp),
//                           )
//                         ],
//                       )
//             ),