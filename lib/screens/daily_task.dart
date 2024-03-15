import 'package:exam/screens/intro.dart';
import 'package:exam/screens/person_screen.dart';
import 'package:flutter/material.dart';

class DailyTask extends StatelessWidget {
  const DailyTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('asset/images/exam.jpg'),
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Align(
              child: Column(
                children: [
                  Image.asset('asset/images/exam2.png', height: 120),
                  const Text(
                    'Daily Task',
                    style: TextStyle(fontSize: 30, color: Colors.amber),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Creauna obra de arte usando hojas y\nsacala una foto',
                          style: TextStyle(fontSize: 22, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '--Instructions--',
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        )
                      ],
                    ),
                  ),
                  const Column(
                    children: [
                      Text(
                        '.receolota hojas deife fortams color',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Text(
                        '.receolota hojas deife fortams color',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Text(
                        '.receolota hojas deife fortams color',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 1, color: Colors.amber),
                                    borderRadius: BorderRadius.circular(5)),
                                backgroundColor: Colors.amber),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const IntroScreen(),
                                  ));
                            },
                            child: const Text(
                              'START',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
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
