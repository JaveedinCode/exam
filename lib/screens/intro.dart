import 'package:exam/screens/home_screen.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({
    super.key,
  });

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
            padding: const EdgeInsets.only(top: 300.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                children: [
                  Image.asset('asset/images/exam2.png', height: 150),
                  const Text(
                    'Join our daily task!',
                    style: TextStyle(fontSize: 30, color: Colors.redAccent),
                  ),
                  const Text(
                    'Colloborate to make a better',
                    style: TextStyle(fontSize: 22, color: Colors.white),
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
                                        width: 1, color: Colors.cyan),
                                    borderRadius: BorderRadius.circular(5)),
                                backgroundColor: Colors.cyan),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const HomeScreen(),
                                  ));
                            },
                            child: const Text(
                              'Join SocialTask',
                              style: TextStyle(color: Colors.black),
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
    );
  }
}
