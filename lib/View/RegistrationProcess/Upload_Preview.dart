import 'package:flutter/material.dart';
import 'package:food_app/View/RegistrationProcess/Set_location.dart';

import 'package:food_app/View/Widgets/CustomButton.dart';

class UploadPreview extends StatelessWidget {
  const UploadPreview({super.key});

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
                  Center(
                    child: Container(
                        width: 251,
                        height: 260,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 253, 253, 1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Image.asset("assets/me.jpg"),
                        )),
                  ),
                  SizedBox(height: 25),

                   SizedBox(height: 130),
                  InkWell(
                    enableFeedback: true,
                    onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context) => SetLocation(),)),
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