import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatelessWidget {
  final String username; 

  
  String getTodayDate() {
    return DateFormat('EEEE, d MMMM').format(DateTime.now());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F1722),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
         
        },
        backgroundColor: const Color.fromARGB(255, 79, 211, 180),
        child: const Icon(Icons.add, color: Colors.black),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Profile bar
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: const CircleAvatar(
                  radius: 26,
                  backgroundImage: AssetImage('lib/assets/images/profile.png'), // example profile icon
                ),
                title: Text(
                  'Hi, $username',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                subtitle: Text(
                  getTodayDate(),
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                'Categories',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 181, 175, 175),
                ),
              ),

              const SizedBox(height: 16),

              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  children: [
                    _buildCategoryCard('Work', Icons.work_outline, Colors.orangeAccent),
                    _buildCategoryCard('Home', Icons.home_outlined, Colors.lightBlueAccent),
                    _buildCategoryCard('Shopping', Icons.shopping_cart_outlined, Colors.purpleAccent),
                    _buildCategoryCard('Personal', Icons.person_outline, Colors.greenAccent),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryCard(String title, IconData icon, Color color) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Colors.white12),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 28,
            backgroundColor: color,
            child: Icon(icon, color: color, size: 28),
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

