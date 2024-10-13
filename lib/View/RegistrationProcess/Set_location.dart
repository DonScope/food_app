import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/View/RegistrationProcess/Signup_Success_Notification.dart';
import 'package:food_app/View/Widgets/CustomButton.dart';

class SetLocation extends StatelessWidget {
  const SetLocation({super.key});

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
            icon: Image.asset("assets/Icon Back.png")),
      ),
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
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Upload Your Photo \nProfile',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 40),
                  Text(
                    'This data will be displayed in your account \nprofile for security',
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                  SizedBox(height: 25),
               Container(
                      padding: EdgeInsets.all(10),
                        width: double.infinity,
                        height: 147,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 253, 253, 1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset("assets/Pin Logo.png"),
                                SizedBox(width: 15),
                                Padding(
                                  padding:  EdgeInsets.only(top:8.0),
                                  child: Text("Your Location", style: TextStyle( color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),),
                                ),

                              ],
                            ),
                             SizedBox(height: 15),
                           Container(
                        width: double.infinity,
                        height: 73,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(239, 238, 238, 0.321),
                            borderRadius: BorderRadius.circular(20),
                            ),
                        child: InkWell(
                          onTap: () {
                            
                          },
                          child: Center(
                            child:Text("Set Location", style: TextStyle( color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),),
                          ),
                        )),
                          ],
                        )),
               
                  
                   SizedBox(height: 270),
                  InkWell(
                    enableFeedback: true,
                    onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context) => SignupSuccessNotification(),)),
                    child: Center(child: CustomButton(text: "Next")))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}