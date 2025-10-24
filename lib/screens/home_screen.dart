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
        //         floatingActionButton: FloatingActionButton(
        //   backgroundColor: Colors.red,
        //   onPressed: () {
        //     // Add your action here
        //   },
        //   child: Icon(Icons.add, color: Colors.white),
        // ),
        title: Text(
          'TODO',
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 48, 5, 116),
      ),
       floatingActionButton: FloatingActionButton(
    onPressed: () {
      print("Plus button tapped!");
    },
     backgroundColor: Colors.red,
    child: Icon(Icons.add),
   
  ),
  floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
  bottomNavigationBar: BottomAppBar(
    shape: CircularNotchedRectangle(), // creates notch for FAB
    notchMargin: 6, // space between FAB and bar
    color: Colors.white,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
          icon: Icon(Icons.home),
          onPressed: () {
            print("Home tapped");
          },
        ),
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            print("Search tapped");
          },
        ),
        SizedBox(width: 40), // space for center FAB
        IconButton(
          icon: Icon(Icons.notifications),
          onPressed: () {
            print("Notifications tapped");
          },
        ),
        IconButton(
          icon: Icon(Icons.person),
          onPressed: () {
            print("Profile tapped");
          },
        ),
      ],
    ),
  ),


      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                contentPadding: EdgeInsets.zero,
                // leading: const CircleAvatar(
                //   radius: 26,
                //   backgroundImage: AssetImage(
                //     'assets/images/profile.jpeg',
                //   ), // example profile icon
                // ),
                title: Text(
                  'Hi, $username 👋',
                  style: const TextStyle(
                    fontSize: 40,
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
                height: 300,
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  padding: const EdgeInsets.all(12),
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  childAspectRatio: 1.5,
                  children: [
                    Container(
                      height: 100,
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
                      height: 100,
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
                      height: 100,
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
                      height: 100,
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
              const SizedBox(height: 20),
              Center(
                child: Text(
                  'Recent tasks',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 228, 224, 224),
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Card(
                      elevation: 20,
                      shadowColor: const Color.fromARGB(255, 145, 136, 230),
                      child: Container(
                        height: 80,
                        width: 500,
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
                            Text(
                              'n tasks',
                              style: TextStyle(
                                color: const Color.fromARGB(255, 24, 23, 23),
                                fontSize: 10,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Card(
                      elevation: 20,
                      shadowColor: const Color.fromARGB(255, 139, 129, 235),
                      child: Container(
                        height: 80,
                        width: 500,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          children: [
                            Text(
                              'DashBoard for ProSavvy',
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
                            Text(
                              'n tasks',
                              style: TextStyle(
                                color: const Color.fromARGB(255, 32, 29, 29),
                                fontSize: 10,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Card(
                      elevation: 20,
                      shadowColor: const Color.fromARGB(255, 129, 120, 208),
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        height: 80,
                        width: 500,
                        child: Column(
                          children: [
                            Text(
                              'Mobile Apps forTrack.id',
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
                            Text(
                              'n tasks',
                              style: TextStyle(
                                color: const Color.fromARGB(255, 23, 21, 21),
                                fontSize: 10,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Categories',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 231, 226, 226),
                ),
              ),

              const SizedBox(height: 16),

              // Category cards (clickable)
              SizedBox(
                height: 450,
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  childAspectRatio: 1.5,
                  children: [
                    _buildCategoryCard(
                      'Home',
                      Icons.home_outlined,
                      Colors.lightBlueAccent,
                      () {
                        print('Home tapped!');
                      },
                    ),
                    _buildCategoryCard(
                      'Shopping',
                      Icons.shopping_cart_outlined,
                      Colors.purpleAccent,
                      () {
                        print('Shopping tapped!');
                      },
                    ),
                    _buildCategoryCard(
                      'Personal',
                      Icons.person_outline,
                      Colors.greenAccent,
                      () {
                        print('Personal tapped!');
                      },
                    ),
                    _buildCategoryCard(
                      'Work',
                      Icons.work_outline,
                      Colors.orangeAccent,
                      () {
                        print('Work tapped!');
                      },
                    ),
                    _buildCategoryCard(
                      'Health',
                      Icons.health_and_safety_outlined,
                      Colors.redAccent,
                      () {
                        print('Health tapped!');
                      },
                    ),
                    _buildCategoryCard(
                      'Physical Activities',
                      Icons.fitness_center,
                      Colors.teal,
                      () {
                        print('Physical Activities tapped!');
                      },
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // Create Task Button
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    print("Create Task pressed!");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    'Create Task',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  //  Helper Widgets 

  

  Widget _buildRecentTaskCard(
    String taskTitle,
    String subTitle,
    int taskCount,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Card(
        elevation: 6,
        shadowColor: Colors.grey.withOpacity(0.3),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                taskTitle,
                style: const TextStyle(
                  color: Colors.black87,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                subTitle,
                style: const TextStyle(color: Colors.grey, fontSize: 12),
              ),
              Text(
                "$taskCount tasks",
                style: const TextStyle(color: Colors.black54, fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryCard(
    String title,
    IconData icon,
    Color color,
    VoidCallback onTap,
  ) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(18),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: Colors.white12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
            ),
          ],
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 28,
              backgroundColor: color,
              child: Icon(icon, color: Colors.white, size: 28),
            ),
            const SizedBox(height: 12),
            Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
