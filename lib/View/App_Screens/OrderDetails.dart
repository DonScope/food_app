import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Orderdetails extends StatefulWidget {
  const Orderdetails({super.key});

  @override
  State<Orderdetails> createState() => _OrderdetailsState();
}

class _OrderdetailsState extends State<Orderdetails> {
  int number = 1;
  Incrementing(int num) {
    number = num;
    number++;
    setState(() {});
  }

  Decrement(int num) {
    number = num;

    if (num > 1) {
      number--;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
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
              padding: const EdgeInsets.all(15),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Text(
                      'Order details',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      width: 347.w,
                      height: 103.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: EdgeInsets.all(12),
                        child: Row(
                          children: [
                            Container(
                              width: 62.w,
                              height: 62.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15)),
                              child: Image.asset("assets/FruitSalad.png"),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Spacy fresh crab",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Waroenk kita",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color.fromRGBO(59, 59, 59, 1)),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "\$ 35",
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(83, 232, 139, 1)),
                                ),
                              ],
                            ),
                            SizedBox(width: 30.w),
                            Container(
                              width: 26.w,
                              height: 26.h,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(31, 233, 108, 0.303)),
                              child: InkWell(
                                  onTap: () => Decrement(number),
                                  child: Icon(Icons.remove,
                                      color: Color.fromRGBO(0, 167, 64, 1))),
                            ),
                            SizedBox(width: 10.w),
                            Text("$number"),
                            SizedBox(width: 15.w),
                            Container(
                              width: 26.w,
                              height: 26.h,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(31, 233, 108, 0.303)),
                              child: InkWell(
                                  onTap: () => Incrementing(number),
                                  child: Icon(Icons.add,
                                      color: Color.fromRGBO(0, 167, 64, 1))),
                            ),
                          ],
                        ),
                      ),
                    )
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
