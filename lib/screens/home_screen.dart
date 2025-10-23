import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  String getTodayDate() {
    return DateFormat('EEEE, d MMMM').format(DateTime.now());
  }

  @override
  Widget build(BuildContext context) {
    final String username = "Jahnavi";

    return Scaffold(
      backgroundColor: const Color(0xFF0F1722),
      appBar: AppBar(
        title: Text('TODO'),
        backgroundColor: const Color.fromARGB(255, 48, 5, 116),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const CircleAvatar(
                radius: 26,
                backgroundImage: AssetImage(
                  'assets/images/profile.png',
                ), // example profile icon
              ),
              title: Text(
                'Hi, $username',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              subtitle: Column(
                children: [
                  Text(getTodayDate(), style: TextStyle(color: Colors.white)),
                  Text(
                    'Your daily adventure starts here',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            //progress box
            Container(
              height: 250,
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                padding: const EdgeInsets.all(12),
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        "On going",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 16, 14, 14),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 43, 227, 227),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        "Completed",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 18, 16, 16),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 226, 28, 14),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        "Canceled",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 18, 17, 17),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 240, 179, 11),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        "In Process",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 24, 12, 12),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //Recent Tasks
            Card(
              child: Container(
                height: 200,
                child: Column(
                  children: [
                    Text(
                      'Website for rune.io',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 18, 17, 17),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Digital Product Design',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 88, 86, 86),
                        fontSize: 10,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
  

  
  
  // @override
  // Widget build(BuildContext context) {
  //   final String username; 
  //   return Scaffold(
  //     backgroundColor: const Color(0xFF0F1722),
  //     floatingActionButton: FloatingActionButton(
  //       onPressed: () {
         
  //       },
  //       backgroundColor: const Color.fromARGB(255, 79, 211, 180),
  //       child: const Icon(Icons.add, color: Colors.black),
  //     ),
  //     body: SafeArea(
  //       child: Padding(
  //         padding: const EdgeInsets.all(16.0),
  //         child: Column(
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           children: [
  //             // Top Profile bar
  //             ListTile(
  //               contentPadding: EdgeInsets.zero,
  //               leading: const CircleAvatar(
  //                 radius: 26,
  //                 backgroundImage: AssetImage('lib/assets/images/profile.png'), // example profile icon
  //               ),
  //               title: Text(
  //                 'Hi, $username',
  //                 style: const TextStyle(
  //                   fontSize: 20,
  //                   fontWeight: FontWeight.bold,
  //                   color: Colors.white,
  //                 ),
  //               ),
  //               subtitle: Text(
  //                 getTodayDate(),
  //                 style: TextStyle(
  //                   color: Colors.white,
  //                 ),
  //               ),
  //             ),

            

  //             const Text(
  //               'Categories',
  //               style: TextStyle(
  //                 fontSize: 18,
  //                 fontWeight: FontWeight.w600,
  //                 color: Color.fromARGB(255, 181, 175, 175),
  //               ),
  //             ),

  //             const SizedBox(height: 16),

  //             Expanded(
  //               child: GridView.count(
  //                 crossAxisCount: 2,
  //                 mainAxisSpacing: 16,
  //                 crossAxisSpacing: 16,
  //                 children: [
  //                   _buildCategoryCard('Work', Icons.work_outline, Colors.orangeAccent),
  //                   _buildCategoryCard('Home', Icons.home_outlined, Colors.lightBlueAccent),
  //                   _buildCategoryCard('Shopping', Icons.shopping_cart_outlined, Colors.purpleAccent),
  //                   _buildCategoryCard('Personal', Icons.person_outline, Colors.greenAccent),
  //                 ],
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }

  // Widget _buildCategoryCard(String title, IconData icon, Color color) {
  //   return Container(
  //     decoration: BoxDecoration(
  //       color: Colors.white,
  //       borderRadius: BorderRadius.circular(18),
  //       border: Border.all(color: Colors.white12),
  //     ),
  //     padding: const EdgeInsets.all(16),
  //     child: Column(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       children: [
  //         CircleAvatar(
  //           radius: 28,
  //           backgroundColor: color,
  //           child: Icon(icon, color: color, size: 28),
  //         ),
  //         const SizedBox(height: 10),
  //         Text(
  //           title,
  //           style: const TextStyle(
  //             fontSize: 16,
  //             fontWeight: FontWeight.w600,
  //             color: Colors.white,
  //           ),
  //         ),
  //       ],
  //     ),
  //   );

