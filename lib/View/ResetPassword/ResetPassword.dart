import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/View/RegistrationProcess/Upload_Preview.dart';
import 'package:food_app/View/ResetPassword/ViaSMS_screen.dart';
import 'package:food_app/View/Widgets/CustomButton.dart';
import 'package:food_app/View/Widgets/CustomTextField.dart';
import 'package:food_app/View/Widgets/CustomTextFieldWithImage.dart';

class Resetpassword extends StatelessWidget {
  const Resetpassword({super.key});

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
                    'Reset your password \nhere',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 40),
                  Text(
                    'Select which contact details should we use to reset your password',
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                  SizedBox(height: 30),
                  CustomTextField(hintText: "New Password"),
                   SizedBox(height: 25),
                   Customtextfieldwithimage(hintText: "Confirm Password", ic: Icon(Icons.remove_red_eye),),
                   SizedBox(height:255),
                  InkWell(
                    enableFeedback: true,
                    onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context) => ViasmsScreen(),)),
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