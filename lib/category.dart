import 'package:flutter/material.dart';
import 'package:woolvoyage/Arun/Farmerdetails.dart';
import 'package:woolvoyage/Arun/Industry.dart';
import 'package:woolvoyage/Arun/Warehouse.dart';
import 'package:woolvoyage/Arun/agent.dart';
import 'package:woolvoyage/Arun/govemp.dart';
import 'package:woolvoyage/viji1.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Select your Category'),
          backgroundColor: const Color(0xFFe9dbff),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
            side: BorderSide(
              color: Colors.white,
              width: 2.0,
            ),
          ),
        ),
        body: CategoryScreen(),
      ),
    ),
  );
}

class CategoryScreen extends StatelessWidget {
  final List<CategoryItem> categories = [
    CategoryItem('Farmers', Icons.people),
    CategoryItem('Agents', Icons.work),
    CategoryItem('Warehouse', Icons.store),
    CategoryItem('Industry', Icons.build),
    CategoryItem('Government Officials', Icons.account_balance),
    CategoryItem('Other Users', Icons.person),
  ];

  CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage('assets/pexels-pixabay-357138 (1).jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.5),
              BlendMode.darken,
            ),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(categories.length, (index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: CategoryTile(
                  categoryItem: categories[index],
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  final CategoryItem categoryItem;

  const CategoryTile({super.key, required this.categoryItem});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1, // Set elevation to 0 to remove the shadow
      color: Colors.white12, // Set the background color to transparent
      child: Container(
        width: 350,
        height: 50,
        decoration: BoxDecoration(
          borderRadius:
              BorderRadius.circular(10), // Adjust the border radius as needed
          border: Border.all(
            color: const Color(0xFFe9dbff), // Adjust the border color as needed
            width: 2.0, // Adjust the border width as needed
          ),
        ),
        child: Material(
          color: Colors.white12,
          child: InkWell(
            onTap: () {
              // Handle category tap
              // You can navigate to a new screen or perform other actions here
             Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => getCategoryPage(categoryItem)));
            },
            child: Center(
              child: ListTile(
                title: Text(
                  categoryItem.name,
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                leading: Icon(categoryItem.icon, color: Colors.black),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CategoryItem {
  final String name;
  final IconData icon;

  CategoryItem(this.name, this.icon);
}

Widget getCategoryPage(CategoryItem categoryItem) {
  switch (categoryItem.name) {
    case 'Farmers':
      return Farmer();
    case 'Agents':
      return Agent();
    case 'Warehouse':
      return ware();
    case 'Industry':
      return indust();
    case 'Government Officials':
      return Goverment();
    case 'Other Users':
      return Ecommerce();
    default:
      return Container(); // You can return a default page or handle the case accordingly
  }
}