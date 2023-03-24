import 'package:flutter/material.dart';

import '../routes.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(8),
            width: 375,
            height: 450,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: const Color.fromARGB(210, 151, 114, 255),
            ),
            child: Image.asset(
              'assets/motomelhor.png',
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 50),
            child: Text(
              'Bring the Store to your\n Door',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 35),
            child: Text(
              'Pick your desired Fruits and Vegetable\n from Sthe application.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
                color: Color.fromARGB(255, 119, 119, 119),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(155, 30, 0, 30),
            child: Row(
              children: const [
                Card(
                  elevation: 0,
                  color: Color.fromARGB(149, 148, 109, 253),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: SizedBox(
                    width: 25,
                    height: 10,
                  ),
                ),
                Card(
                  elevation: 0,
                  color: Color.fromARGB(146, 211, 209, 209),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: SizedBox(
                    width: 13,
                    height: 10,
                  ),
                ),
                Card(
                  elevation: 0,
                  color: Color.fromARGB(146, 211, 209, 209),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: SizedBox(
                    width: 13,
                    height: 10,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(150, 151, 114, 255),
                minimumSize: const Size(250, 70),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed(AppRoutes.mangoScreen);
              },
              child: const Text(
                'Get Started',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
