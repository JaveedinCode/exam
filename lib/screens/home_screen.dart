import 'package:exam/screens/daily_task.dart';
import 'package:exam/screens/person_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        physics: const BouncingScrollPhysics(),
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 221, 218, 218),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          backgroundImage: AssetImage('asset/images/exam.jpg'),
                          radius: 20,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Elvar Gaffar'),
                              Text('4 days ago')
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 180.0),
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.more_vert)),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 260,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('asset/images/exam.jpg'))),
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_upward)),
                      const Text("0"),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_downward)),
                      const Text("0"),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 12.0),
                    child: Row(
                      children: [
                        Text(" i like it Cafka 🔥"),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
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
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Person(),
                      ));
                },
                icon: const Icon(Icons.person, color: Colors.cyan),
              ),
              label: ''),
        ],
      ),
    );
  }
}
