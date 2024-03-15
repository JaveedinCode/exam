import 'package:exam/screens/daily_task.dart';
import 'package:exam/screens/home_screen.dart';
import 'package:flutter/material.dart';

class Person extends StatelessWidget {
  const Person({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
        ],
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        title: const Text('Profile'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('asset/images/exam.jpg'),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    color: Colors.green,
                    Icons.verified,
                  ),
                  Text(
                    ' elvargaffar27',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '😂',
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [Text('Tasks')],
                      ),
                      Row(
                        children: [Text('0')],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [Text('Followers')],
                      ),
                      Row(
                        children: [Text('2')],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [Text('Follwing')],
                      ),
                      Row(
                        children: [Text('2')],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Privacy Setting: public',
                    style: TextStyle(fontWeight: FontWeight.w200),
                  )
                ],
              ),
            ),
            Row(
              children: [
                ClipRRect(
                  child: Image.asset(
                    'asset/images/exam.jpg',
                    scale: 7,
                  ),
                ),
                ClipRRect(
                  child: Image.asset(
                    'asset/images/exam1.jpg',
                    scale: 7,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ));
                },
                icon: const Icon(Icons.home),
                color: Colors.cyan,
              ),
              label: ''),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Colors.cyan,
              ),
              label: ''),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.radar,
                color: Colors.cyan,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DailyTask(),
                        ));
                  },
                  icon: const Icon(
                    Icons.emoji_events,
                    color: Colors.cyan,
                  )),
              label: ''),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.cyan,
              ),
              label: ''),
        ],
      ),
    );
  }
}
