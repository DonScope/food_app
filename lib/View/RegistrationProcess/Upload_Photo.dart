import 'package:flutter/material.dart';
import 'package:food_app/View/RegistrationProcess/Upload_Preview.dart';
import 'package:food_app/View/Widgets/CustomButton.dart';

class UploadPhoto extends StatelessWidget {
  const UploadPhoto({super.key});

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
                  InkWell(
                    onTap: () {},
                    child: Container(
                        width: double.infinity,
                        height: 129,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 253, 253, 1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Image.asset("assets/Gallery.png"),
                        )),
                  ),
                  SizedBox(height: 25),
                    InkWell(
                    onTap: () {
                      
                    },
                    child: Container(
                          width: double.infinity,
                          height: 129,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 253, 253, 1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          child: Center(
                            child: Image.asset("assets/Camera.png"),
                          )),
                  ),
                   SizedBox(height: 130),
                  InkWell(
                    enableFeedback: true,
                    onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context) => UploadPreview(),)),
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
