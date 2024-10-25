import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/Model/Chat_Model.dart';
import 'package:food_app/View/App_Screens/Finishorder.dart';

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
          icon: Image.asset("assets/Icon Back.png", width: 60.w, height: 40.h),
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
                      height: 100,
                      width: 360,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("assets/Photo Profile.png"),
                          ),
                          SizedBox(width: 10),
                          Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 24, right: 45),
                                child: Text(
                                  "Dianne Russell",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(height: 3),
                              Padding(
                                padding: const EdgeInsets.only(right: 90),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child:
                                          Image.asset("assets/Ellipse 184.png"),
                                    ),
                                    SizedBox(width: 3),
                                    Text(
                                      "Online",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 70),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(255, 162, 249, 226),
                            ),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Finishorder(),
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
                          color: Chat[index].sender == 'chat1' ? Colors.blue : Color.fromRGBO(246, 246, 246, 1),
                          tail: true,
                          textStyle:
                              TextStyle(color: Chat[index].sender == 'chat1' ? Colors.white : Colors.black, fontSize: 16),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 8.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 2,
                              blurRadius: 5,
                            ),
                          ],
                          border: Border.all(
                            color: Colors.blueAccent,
                            width: 1.5,
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
                              ),
                              onPressed: () {
                                Chat.add(ChatModel(Textcontroller.text, Sender1?'chat1' : 'chat2'));
                                Textcontroller.clear();
                                Sender1 = !Sender1;
                                setState(() {}); 
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


