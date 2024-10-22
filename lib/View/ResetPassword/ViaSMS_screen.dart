import 'package:flutter/material.dart';
import 'package:food_app/View/ResetPassword/ResetSuccess.dart';
import 'package:food_app/View/Widgets/CustomButton.dart';

class ViasmsScreen extends StatelessWidget {
  const ViasmsScreen({super.key});

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
                    'Enter 4-digit \nVerification code',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 40),
                  Text(
                    'Code send to +6282045**** . This code will \nexpired in 01:30',
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                  SizedBox(height: 25),
                  Container(
                    width: 350,
                    child: TextField(
                      maxLength: 4,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder( 
                      borderSide: BorderSide(color: Colors.green)
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        counterText: "",
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 300),
                  InkWell(
                    onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context) => Resetsuccess(),)),
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
