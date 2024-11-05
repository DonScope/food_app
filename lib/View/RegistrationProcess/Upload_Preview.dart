import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/View/RegistrationProcess/Set_location.dart';
import 'package:food_app/View/Widgets/CustomButton.dart';
import 'package:image_picker/image_picker.dart';

class UploadPreview extends StatefulWidget {
  XFile? image;
   UploadPreview({required this.image});

  @override
  State<UploadPreview> createState() => _UploadPreviewState();
}

class _UploadPreviewState extends State<UploadPreview> {
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
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
          'assets/Pattern2.png',
        ))),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(10.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Upload Your Photo \nProfile',
                  style: TextStyle(
                      fontSize: 30.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 40.h),
                Text(
                  'This data will be displayed in your account \nprofile for security',
                  style: TextStyle(fontSize: 14.sp, color: Colors.black),
                ),
                SizedBox(height: 25.h),
            Center(
                child: Stack(
                  children: [
                    widget.image == null
                        ? Text("No selected image to preview.")
                        : Container(
                            width: 245.w,
                            height: 238.h,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15.w),
                                image: DecorationImage(
                                    image: FileImage(File(widget.image!.path)),
                                    fit: BoxFit.cover)),
                          ),
                    Positioned(
                        right: 0,
                        child: IconButton(
                            onPressed: () {
                              setState(() {
                                widget.image = null;
                              });
                            },
                            icon: Icon(
                              Icons.close,
                              color: Colors.white,
                            )))
                  ],
                ),
              ),
                SizedBox(height: 25.h),
                SizedBox(height: 130.h),
                InkWell(
                  enableFeedback: true,
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SetLocation()),
                  ),
                  child: Center(child: CustomButton(text: "Next")),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
