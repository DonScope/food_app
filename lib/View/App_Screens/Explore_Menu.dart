import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/View/App_Screens/Filterscreen.dart';

class ExploreMenu extends StatefulWidget {
  const ExploreMenu({super.key});

  @override
  State<ExploreMenu> createState() => _ExploreMenuState();
}

class _ExploreMenuState extends State<ExploreMenu> {
  List<Map<String, String>> ExploreMenuList = [
    {
      "title": "Herbal Pancake",
      "subtitle": "Warung Herbal",
      "price": "\$7",
      "image": "assets/Herbal.png",
    },
    {
      "title": "Fruit Salad",
      "subtitle": "Wihie Resto",
      "price": "\$5",
      "image": "assets/FruitSalad.png",
    },
    {
      "title": "Green Noddle",
      "subtitle": "Noddle Home",
      "price": "\$15",
      "image": "assets/PhotoMenu.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
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
              padding: EdgeInsets.all(12.w),
              child: SingleChildScrollView(
                physics: NeverScrollableScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Find Your \nFavorite Food',
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Color.fromRGBO(250, 253, 255, 1)),
                            child: IconButton(
                                iconSize: 30,
                                color: Color.fromRGBO(83, 232, 139, 1),
                                onPressed: () {},
                                icon: Icon(
                                  Icons.notifications_none_outlined,
                                ))),
                      ],
                    ),
                    SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 270.w,
                          child: TextField(
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search),
                              prefixIconColor: Color.fromRGBO(218, 99, 23, 1.6),
                              hintText: 'What do you want to order?',
                              hintStyle: TextStyle(
                                color: Color.fromRGBO(218, 99, 23, 1.6),
                                fontSize: 16.0,
                              ),
                              fillColor: Color.fromRGBO(249, 168, 77, 0.215),
                              filled: true,
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 20.0,
                                horizontal: 16.0,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 0.5,
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: BorderSide(
                                  color: Colors.green,
                                  width: 2.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                            width: 49,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Color.fromRGBO(249, 169, 77, 0.215)),
                            child: IconButton(
                                iconSize: 25,
                                color: Colors.green,
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => FilterScreen(),
                                      ));
                                },
                                icon: Icon(
                                  Icons.sort,
                                  color: Color.fromRGBO(218, 99, 23, 1.6),
                                ))),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          "Popular Menu",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 550.h,
                      child: ListView.builder(
                        itemCount: ExploreMenuList.length,
                        itemBuilder: (context, index) {
                          var menuItem = ExploreMenuList[index];
                          return Container(
                            height: 120,
                            child: ListTile(
                              leading: Image.asset(
                                menuItem["image"]!, 
                                width: 40,
                                height: 64,
                                fit: BoxFit.contain
                              ),
                              title: Text(
                                menuItem["title"]!,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                             
                              ),
                              subtitle: Text(menuItem["subtitle"]!),
                              trailing: Text(
                                menuItem["price"]!,
                                style: TextStyle(
                                  fontSize: 23,
                                  color: Color.fromRGBO(254, 173, 29, 1),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
