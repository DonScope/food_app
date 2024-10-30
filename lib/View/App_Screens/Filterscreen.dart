import 'package:flutter/material.dart';
import 'package:food_app/View/Widgets/CustomButton.dart';

class FilterScreen extends StatefulWidget {
  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  List<String> selectedTypes = [];
  List<String> selectedLocations = [];
  List<String> selectedFoods = [];

  void toggleSelection(String category, String value) {
    setState(() {
      switch (category) {
        case 'Type':
          selectedTypes.contains(value)
              ? selectedTypes.remove(value)
              : selectedTypes.add(value);
          break;
        case 'Location':
          selectedLocations.contains(value)
              ? selectedLocations.remove(value)
              : selectedLocations.add(value);
          break;
        case 'Food':
          selectedFoods.contains(value)
              ? selectedFoods.remove(value)
              : selectedFoods.add(value);
          break;
      }
    });
  }

  void clearFilters() {
    setState(() {
      selectedTypes.clear();
      selectedLocations.clear();
      selectedFoods.clear();
    });
  }

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
              padding: const EdgeInsets.all(15),
              child: SingleChildScrollView(
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
                            color: Color.fromRGBO(250, 253, 255, 1),
                          ),
                          child: IconButton(
                            iconSize: 30,
                            color: Color.fromRGBO(83, 232, 139, 1),
                            onPressed: () {},
                            icon: Icon(Icons.notifications_none_outlined),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 350,
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
                      ],
                    ),
                    SizedBox(height: 20),
                    Text('Type',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    SizedBox(height: 10),
                    Wrap(
                      spacing: 10,
                      children: [
                        FilterChipWidget(
                            label: 'Restaurant',
                            isSelected: selectedTypes.contains('Restaurant'),
                            onSelected: (selected) =>
                                toggleSelection('Type', 'Restaurant')),
                        FilterChipWidget(
                            label: 'Menu',
                            isSelected: selectedTypes.contains('Menu'),
                            onSelected: (selected) =>
                                toggleSelection('Type', 'Menu')),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text('Location',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    SizedBox(height: 10),
                    Wrap(
                      spacing: 10,
                      children: [
                        FilterChipWidget(
                            label: '1 Km',
                            isSelected: selectedLocations.contains('1 Km'),
                            onSelected: (selected) =>
                                toggleSelection('Location', '1 Km')),
                        FilterChipWidget(
                            label: '>10 Km',
                            isSelected: selectedLocations.contains('>10 Km'),
                            onSelected: (selected) =>
                                toggleSelection('Location', '>10 Km')),
                        FilterChipWidget(
                            label: '<10 Km',
                            isSelected: selectedLocations.contains('<10 Km'),
                            onSelected: (selected) =>
                                toggleSelection('Location', '<10 Km')),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text('Food',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    SizedBox(height: 10),
                    Wrap(
                      spacing: 10,
                      children: [
                        FilterChipWidget(
                            label: 'Cake',
                            isSelected: selectedFoods.contains('Cake'),
                            onSelected: (selected) =>
                                toggleSelection('Food', 'Cake')),
                        FilterChipWidget(
                            label: 'Soup',
                            isSelected: selectedFoods.contains('Soup'),
                            onSelected: (selected) =>
                                toggleSelection('Food', 'Soup')),
                        FilterChipWidget(
                            label: 'Main Course',
                            isSelected: selectedFoods.contains('Main Course'),
                            onSelected: (selected) =>
                                toggleSelection('Food', 'Main Course')),
                        FilterChipWidget(
                            label: 'Appetizer',
                            isSelected: selectedFoods.contains('Appetizer'),
                            onSelected: (selected) =>
                                toggleSelection('Food', 'Appetizer')),
                        FilterChipWidget(
                            label: 'Dessert',
                            isSelected: selectedFoods.contains('Dessert'),
                            onSelected: (selected) =>
                                toggleSelection('Food', 'Dessert')),
                      ],
                    ),
                    SizedBox(height: 60),
                    InkWell(
                      onTap: () {
                        // Handle the search action with selected filters
                        print('Selected Types: $selectedTypes');
                        print('Selected Locations: $selectedLocations');
                        print('Selected Foods: $selectedFoods');
                      },
                      child: Center(child: CustomButton(text: "Search")),
                    ),
                    SizedBox(height: 10),
                    Center(
                      child: TextButton(
                        onPressed: clearFilters,
                        child: Text("Clear Filters",
                            style: TextStyle(color: Colors.red)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FilterChipWidget extends StatelessWidget {
  final String label;
  final bool isSelected;
  final ValueChanged<bool> onSelected;

  const FilterChipWidget({
    required this.label,
    required this.isSelected,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: Text(label),
      selected: isSelected,
      onSelected: onSelected,
      backgroundColor: Colors.orange[50],
      selectedColor: Colors.orange,
      labelStyle: TextStyle(
        color: isSelected ? Colors.white : Colors.orange,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
