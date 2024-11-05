import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/View/RegistrationProcess/Upload_Preview.dart';
import 'package:food_app/View/Widgets/CustomButton.dart';
import 'package:image_picker/image_picker.dart';

class UploadPhoto extends StatefulWidget {
  const UploadPhoto({super.key});

  @override
  State<UploadPhoto> createState() => _UploadPhotoState();
}

class _UploadPhotoState extends State<UploadPhoto> {
  XFile? image;
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
          icon: Image.asset("assets/Icon Back.png"),
        ),
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
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 40.h),
                Text(
                  'This data will be displayed in your account \nprofile for security',
                  style: TextStyle(fontSize: 14.sp, color: Colors.black),
                ),
                SizedBox(height: 25.h),
                InkWell(
                  onTap: () async {
                    image = (await ImagePicker()
                        .pickImage(source: ImageSource.gallery));
                    setState(() {});
                  },
                  child: Container(
                    width: double.infinity,
                    height: 129.h,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 253, 253, 1),
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Center(
                      child: Image.asset("assets/Gallery.png"),
                    ),
                  ),
                ),
                SizedBox(height: 25.h),
                InkWell(
                  onTap: () async {
                    image = (await ImagePicker()
                        .pickImage(source: ImageSource.camera));
                  },
                  child: Container(
                    width: double.infinity,
                    height: 129.h,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 253, 253, 1),
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Center(
                      child: Image.asset("assets/Camera.png"),
                    ),
                  ),
                ),
                SizedBox(height: 130.h),
                InkWell(
                  enableFeedback: true,
                  onTap: () {
                    if (image != null) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UploadPreview(
                            image: image,
                          ),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            content: Text(
                                'Please select an image before proceeding')),
                      );
                    }
                  },
                  child: Center(
                    child: Container(
                      width: 157.w,
                      height: 57.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.w),
                        color: image == null
                            ? Colors.grey
                            : Color.fromRGBO(83, 232, 139, 1),
                      ),
                      child: Center(
                        child: Text(
                          "Next",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
