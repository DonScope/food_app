import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/View/App_Screens/Filterscreen.dart';

class ExploreRestaurant extends StatefulWidget {
  const ExploreRestaurant({super.key});

  @override
  State<ExploreRestaurant> createState() => _ExploreRestaurantState();
}

class _ExploreRestaurantState extends State<ExploreRestaurant> {
  List<Map<String, String>> items = [
    {
      'image': 'assets/Vegan.png',
      'mainText': 'Vegan Resto',
      'smallText': '12 Mins',
    },
    {
      'image': 'assets/Healthy.png',
      'mainText': 'Healthy Food',
      'smallText': '8 Mins',
    },
    {
      'image': 'assets/GoodFood.png',
      'mainText': 'Good Food',
      'smallText': '12 Mins',
    },
    {
      'image': 'assets/SmartResto.png',
      'mainText': 'Smart Resto',
      'smallText': '8 Mins',
    },
    {
      'image': 'assets/VeganResto.png',
      'mainText': 'Vegan Resto',
      'smallText': '12 Mins',
    },
    {
      'image': 'assets/HealthyFood.png',
      'mainText': 'Healthy Food',
      'smallText': '8 Mins',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Find Your \nFavorite Food",
                style: TextStyle(
                    fontSize: 31,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(9, 5, 28, 1)),
              ),
              Container(
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(250, 253, 255, 1),
                      borderRadius: BorderRadius.circular(15)),
                  width: 45,
                  height: 45,
                  child: Stack(
                    children: [
                      Center(
                        child: Icon(
                          Icons.notifications_none_outlined,
                          color: Color.fromRGBO(83, 232, 139, 1),
                          size: 30,
                        ),
                      ),
                      Positioned(
                        right: 6,
                        top: 6,
                        child: Container(
                          width: 6,
                          height: 6,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ],
                  ))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 15, right: 20),
          child: Row(
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
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, top: 20),
          child: Row(
            children: [
              Text(
                "Popular Restaurant",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.black),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 30,
                childAspectRatio: 0.85,
              ),
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Container(
                  width: 100,
                  height: 10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage(items[index]['image']!),
                          backgroundColor: Colors.white,
                        ),
                      ),
                      Text(
                        items[index]['mainText']!,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        items[index]['smallText']!,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                );
              }),
        )
      ])
    ]));
  }
}
