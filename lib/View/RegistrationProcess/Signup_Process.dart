import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/View/RegistrationProcess/Payment_Process.dart';
import 'package:food_app/View/Widgets/CustomButton.dart';
import 'package:food_app/View/Widgets/CustomTextField.dart';

class SignupProcess extends StatefulWidget {
  const SignupProcess({super.key});

  @override
  State<SignupProcess> createState() => _SignupProcessState();
}

class _SignupProcessState extends State<SignupProcess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
            backgroundColor: Colors.transparent,
            leading: IconButton(onPressed: () {
                Navigator.pop(context); 
            },   icon: Image.asset("assets/Icon Back.png")),
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
                  Text('Fill in your bio to get started', style: TextStyle(fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),),
                  SizedBox(height: 50),
                  Text('This data will be displayed in your account \nprofile for security', style: TextStyle(fontSize: 14, color: Colors.black),),
                   SizedBox(height: 20),
                CustomTextField(hintText: "First Name"),
                 SizedBox(height: 15),
                  CustomTextField(hintText: "Last Name"),
                   SizedBox(height: 15),
                    CustomTextField(hintText: "Mobile Number"),
                     SizedBox(height: 200),
                    Center(
                      child: GestureDetector(
                        onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context) => PaymentProcess(),)),
                        child: CustomButton(text: "Next")),
                    )
              ],),
            ),
          )
        ],
      ),
    );
  }
}