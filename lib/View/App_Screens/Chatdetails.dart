import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/Model/Chat_Model.dart';
import 'package:food_app/View/App_Screens/Call_Ringing.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  TextEditingController Textcontroller = TextEditingController();

  List<ChatModel> Chat = [];
  bool Sender1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset(
            "assets/Icon Back.png",
            width: 60.w,
            height: 40.h,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Image.asset(
            'assets/Pattern.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Positioned(
            top: 100.h,
            child: Container(
              padding: EdgeInsets.all(10.w),
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Chat',
                      style: TextStyle(
                        fontSize: 30.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15.h),
                    Container(
                      height: 100.h,
                      width: 360.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0.w),
                            child: Image.asset("assets/Photo Profile.png"),
                          ),
                          SizedBox(width: 10.w),
                          Column(
                            children: [
                              Padding(
                                padding:
                                    EdgeInsets.only(top: 24.h, right: 45.w),
                                child: Text(
                                  "Dianne Russell",
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(height: 3.h),
                              Padding(
                                padding: EdgeInsets.only(right: 90.w),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 10.h),
                                      child:
                                          Image.asset("assets/Ellipse 184.png"),
                                    ),
                                    SizedBox(width: 3.w),
                                    Text(
                                      "Online",
                                      style: TextStyle(
                                        fontSize: 15.sp,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Container(
                            width: 40.w,
                            height: 40.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color: Color.fromARGB(255, 162, 249, 226),
                            ),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => CallRinging(),
                                  ),
                                );
                              },
                              child: Image.asset("assets/Call logo.png"),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 430.h,
                      child: ListView.builder(
                        itemCount: Chat.length,
                        itemBuilder: (context, index) => BubbleSpecialThree(
                          isSender: Chat[index].sender == 'chat1',
                          text: Chat[index].text,
                          color: Chat[index].sender == 'chat1'
                              ? Colors.blue
                              : Color.fromRGBO(246, 246, 246, 1),
                          tail: true,
                          textStyle: TextStyle(
                            color: Chat[index].sender == 'chat1'
                                ? Colors.white
                                : Colors.black,
                            fontSize: 16.sp,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16.0.w),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.0.w,
                          vertical: 8.0.h,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25.0.r),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 2,
                              blurRadius: 5,
                            ),
                          ],
                          border: Border.all(
                            color: Colors.blueAccent,
                            width: 1.5.w,
                          ),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextField(
                                controller: Textcontroller,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.send,
                                color: Colors.green,
                                size: 24.sp,
                              ),
                              onPressed: () {
                                if (Textcontroller.text.isNotEmpty) {
                                  Chat.add(ChatModel(Textcontroller.text,
                                      Sender1 ? 'chat1' : 'chat2'));
                                  Textcontroller.clear();
                                  Sender1 = !Sender1;
                                  setState(() {});
                                }
                              },
                            ),
                          ],
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
