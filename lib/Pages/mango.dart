import 'package:flutter/material.dart';

import '../routes.dart';

class Mango extends StatefulWidget {
  const Mango({super.key});

  @override
  State<Mango> createState() => _MangoState();
}

class _MangoState extends State<Mango> {
  int contador = 0;
  double preco = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushNamed(AppRoutes.homeScreen);
          },
          icon: const Icon(Icons.chevron_left),
        ),
        title: const Text(
          "Mango",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        actions: [
          Container(
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(70),
              color: const Color.fromARGB(147, 206, 188, 255),
            ),
            child: IconButton(
              color: const Color.fromARGB(149, 148, 109, 253),
              onPressed: () {},
              icon: const Icon(Icons.favorite),
            ),
          ),
        ],
      ),
      body: Center(
        child: Stack(
          children: [
            Positioned(
              left: 55,
              top: -20,
              child: Image.asset(
                'assets/manga.png',
                width: 290,
                height: 290,
              ),
            ),
            Positioned(
              left: 120,
              top: 270,
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (contador > 0) {
                          contador--;
                          preco -= 1.0;
                        }
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      minimumSize: const Size(100, 60),
                    ),
                    child: const Text(
                      '-   ',
                      style: TextStyle(fontSize: 48, color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 180,
              top: 270,
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        contador++;
                        preco += 1.0;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      minimumSize: const Size(100, 60),
                    ),
                    child: const Text(
                      '   +',
                      style: TextStyle(fontSize: 28, color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 168,
              top: 270,
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 1,
                      backgroundColor: const Color.fromARGB(255, 228, 164, 217),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80),
                      ),
                      minimumSize: const Size(60, 60),
                    ),
                    child: Text(
                      '$contador',
                      style: const TextStyle(
                        fontSize: 28,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 20,
              top: 350,
              child: Row(
                children: const [
                  Text(
                    'Duncan Mango',
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 280,
              top: 350,
              child: Row(
                children: [
                  Text(
                    '\$' '$contador' '.00',
                    style: const TextStyle(
                        fontSize: 30,
                        color: Color.fromARGB(149, 148, 109, 253),
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'PC',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromARGB(149, 148, 109, 253),
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              top: 400,
              left: 20,
              child: Row(
                children: const [
                  Text(
                    'Description',
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const Positioned(
              top: 440,
              left: 19,
              child: Text(
                ' A mango is a sweet tropical fruit, and it\'s also the name\n of the trees on wich fruit grows..',
              ),
            ),
            const Positioned(
              top: 457,
              left: 228,
              child: Text(
                'See more',
                style: TextStyle(color: Color.fromARGB(149, 148, 109, 253)),
              ),
            ),
            Positioned(
              top: 488,
              left: 18,
              child: Card(
                color: const Color.fromARGB(255, 228, 164, 217),
                elevation: 0,
                child: SizedBox(
                  width: 30,
                  height: 30,
                  child: Column(
                    children: const [
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 1, 0, 0),
                          child: Icon(
                            Icons.star_border_rounded,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Positioned(
              top: 498,
              left: 58,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  '4.8 Star',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 488,
              left: 136,
              child: Card(
                color: const Color.fromARGB(255, 228, 164, 217),
                elevation: 0,
                child: SizedBox(
                  width: 30,
                  height: 30,
                  child: Column(
                    children: const [
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 1, 0, 0),
                          child: Icon(
                            Icons.access_time_sharp,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Positioned(
              top: 498,
              left: 176,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  '1 day',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 20,
              top: 550,
              child: Row(
                children: const [
                  Text(
                    'Other Items',
                    style: TextStyle(
                      fontSize: 22,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            const Positioned(
              left: 18,
              top: 580,
              child: Card(
                elevation: 0,
                color: Color.fromARGB(255, 253, 228, 228),
                child: SizedBox(
                  width: 110,
                  height: 60,
                ),
              ),
            ),
            Positioned(
              left: 55,
              top: 592,
              child: Image.asset(
                'assets/tomato.png',
                width: 40,
                height: 40,
              ),
            ),
            const Positioned(
              left: 140,
              top: 580,
              child: Card(
                elevation: 0,
                color: Color.fromARGB(255, 238, 255, 235),
                child: SizedBox(
                  width: 110,
                  height: 60,
                ),
              ),
            ),
            Positioned(
              left: 180,
              top: 592,
              child: Image.asset(
                'assets/alface.png',
                width: 40,
                height: 40,
              ),
            ),
            const Positioned(
              left: 265,
              top: 580,
              child: Card(
                elevation: 0,
                color: Color.fromARGB(255, 251, 255, 216),
                child: SizedBox(
                  width: 110,
                  height: 60,
                ),
              ),
            ),
            Positioned(
              left: 300,
              top: 590,
              child: Image.asset(
                'assets/pimentao.png',
                width: 50,
                height: 50,
              ),
            ),
            Positioned(
              left: 20,
              top: 670,
              child: Row(children: [
                SizedBox(
                  width: 172,
                  height: 60,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: const BorderSide(
                            color: Colors.grey,
                            width: 0.5,
                          )),
                    ),
                    onPressed: () {},
                    child: const Text('Add to cart'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: SizedBox(
                    width: 172,
                    height: 60,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        backgroundColor:
                            const Color.fromARGB(149, 148, 109, 253),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed(AppRoutes.checkScreen);
                      },
                      child: const Text('Buy Now'),
                    ),
                  ),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
