import 'package:flutter/material.dart';

import '../routes.dart';

class Check extends StatefulWidget {
  const Check({super.key});

  @override
  State<Check> createState() => _CheckState();
}

class _CheckState extends State<Check> {
  int contador = 0;
  double preco = 0;

  double precoP = 0;
  int contadorP = 0;

  double stotal = 0;
  double total = 0;

  @override
  Widget build(BuildContext context) {
    stotal = preco + precoP;
    total = stotal;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 245, 244, 244),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushNamed(AppRoutes.mangoScreen);
          },
          icon: const Icon(Icons.chevron_left),
        ),
        title: const Text(
          "Checkout",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          const Positioned(
            left: 20,
            top: 10,
            child: Text(
              'Order details',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: 60,
            child: Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: Colors.white,
              child: const SizedBox(
                width: 350,
                height: 110,
              ),
            ),
          ),
          Positioned(
            top: 75,
            left: 35,
            child: Card(
              color: const Color.fromARGB(255, 252, 251, 208),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: const SizedBox(
                width: 100,
                height: 80,
              ),
            ),
          ),

          Positioned(
            top: 100,
            left: 40,
            child: Image.asset(
              'assets/banana.png',
              width: 90,
              height: 30,
            ),
          ),

          const Positioned(
            top: 90,
            left: 150,
            child: Text(
              'Banana',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const Positioned(
            top: 110,
            left: 150,
            child: Text(
              'Fruits',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          Positioned(
            top: 130,
            left: 150,
            child: Text(
              '$contador' 'pc',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

          Positioned(
            left: 250,
            top: 85,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(245, 235, 228, 236),
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(0),
              ),
              onPressed: () {
                setState(() {
                  if (contador > 0) {
                    contador--;
                    preco -= 2;
                  }
                });
              },
              child: const SizedBox(
                width: 30,
                height: 30,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(9, 2, 0, 0),
                  child: Text('__'),
                ),
              ),
            ),
          ),
          Positioned(
            left: 288,
            top: 85,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 155, 105, 196),
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(0),
              ),
              onPressed: () {
                setState(() {
                  contador++;
                  preco += 2;
                });
              },
              child: const SizedBox(
                width: 30,
                height: 30,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(9, 3, 0, 0),
                  child: Text(
                    '+',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
          ),

          //------------------valor total banan
          Positioned(
            left: 255,
            top: 135,
            child: Row(
              children: [
                Text(
                  '\$' '$preco' '0',
                  style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          //----------------------------------------CARD PIMENTAO---------------------------------------

          Positioned(
            left: 20,
            top: 195,
            child: Card(
              color: const Color.fromARGB(255, 255, 255, 255),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: const SizedBox(
                width: 350,
                height: 110,
              ),
            ),
          ),
          //------caixa abaixo do pimentao
          Positioned(
            left: 35,
            top: 210,
            child: Card(
              color: const Color.fromARGB(255, 255, 227, 242),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: const SizedBox(
                width: 100,
                height: 80,
              ),
            ),
          ),

          //---------imagem do pimentao
          Positioned(
            left: 63,
            top: 230,
            child: Image.asset(
              'assets/pimentao.png',
              width: 60,
              height: 60,
            ),
          ),

          //---------------escrita 'Pimentao'
          Positioned(
            left: 150,
            top: 220,
            child: Row(
              children: const [
                Text(
                  'Bell Paper',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          //--------------escrita 'Fruits'
          Positioned(
            left: 150,
            top: 245,
            child: Row(
              children: const [
                Text(
                  'Fruits',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          //--------- quantidade Pimenta
          Positioned(
            left: 150,
            top: 270,
            child: Row(
              children: [
                Text(
                  '$contadorP' 'KG',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),

          //------------------ + e -

          Positioned(
            left: 250,
            top: 220,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(245, 235, 228, 236),
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(0),
              ),
              onPressed: () {
                setState(() {
                  if (contadorP > 0) {
                    contadorP--;
                    precoP -= 37.50;
                  }
                });
              },
              child: const SizedBox(
                width: 30,
                height: 30,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(9, 2, 0, 0),
                  child: Text('__'),
                ),
              ),
            ),
          ),
          Positioned(
            left: 288,
            top: 220,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 155, 105, 196),
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(0),
              ),
              onPressed: () {
                setState(() {
                  contadorP++;
                  precoP += 37.50;
                });
              },
              child: const SizedBox(
                width: 30,
                height: 30,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(9, 3, 0, 0),
                  child: Text(
                    '+',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
          ),

          //------------------valor total pimentao
          Positioned(
            left: 255,
            top: 275,
            child: Row(
              children: [
                Text(
                  '\$' '$precoP',
                  style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            top: 340,
            right: -1,
            bottom: 0,
            child: Card(
              color: const Color.fromARGB(255, 255, 255, 255),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: const SizedBox(
                width: 400,
                height: 360,
              ),
            ),
          ),
          Positioned(
            left: 15,
            top: 360,
            child: Card(
              color: const Color.fromARGB(255, 255, 255, 255),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
                side: const BorderSide(
                  color: Color.fromARGB(255, 246, 246, 246),
                  width: 1,
                ),
              ),
              child: const SizedBox(
                width: 352,
                height: 60,
              ),
            ),
          ),

          Positioned(
            left: 32,
            top: 372,
            child: Card(
              color: const Color.fromARGB(255, 246, 246, 246),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: const SizedBox(
                width: 35,
                height: 35,
              ),
            ),
          ),

          Positioned(
            left: 40,
            top: 380,
            child: Card(
              color: const Color.fromARGB(255, 246, 246, 246),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
                side: const BorderSide(
                  color: Color.fromARGB(255, 0, 0, 0),
                  width: 1,
                ),
              ),
              child: SizedBox(
                width: 18,
                height: 18,
                child: Column(
                  children: const [
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 1, 0, 0),
                          child: Text(
                            '%',
                            style: TextStyle(fontSize: 14),
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Positioned(
            left: 80,
            top: 386,
            child: Text(
              'Promo Code',
              style: TextStyle(
                  fontSize: 14,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.bold),
            ),
          ),

          Positioned(
            right: 30,
            top: 378,
            child: SizedBox(
              width: 70,
              height: 33,
              child: ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        String codd = "";
                        return AlertDialog(
                          title: const Text('Digite um cod'),
                          content: const TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Cod promocional",
                            ),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('Cancelar',
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 155, 105, 196))),
                            ),
                            TextButton(
                                onPressed: () {
                                  if (codd == "pulsati") {
                                    setState(() {
                                      total = total - 5;
                                    });
                                  }
                                  Navigator.of(context).pop();
                                },
                                child: const Text(
                                  "Aplicar",
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 155, 105, 196)),
                                ))
                          ],
                        );
                      });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 155, 105, 196),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: const BorderSide(
                      color: Color.fromARGB(255, 203, 141, 253),
                      width: 1,
                    ),
                  ),
                ),
                child: const Text(
                  'Apply',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Positioned(
            left: 15,
            top: 470,
            child: Card(
              color: const Color.fromARGB(255, 248, 248, 248),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: const SizedBox(
                width: 350,
                height: 140,
              ),
            ),
          ),
          const Positioned(
            left: 30,
            top: 490,
            child: Text(
              'Subtotal',
              style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Positioned(
            right: 30,
            top: 530,
            child: Text(
              'Free',
              style: TextStyle(
                  fontSize: 14,
                  color: Color.fromARGB(255, 155, 154, 154),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            right: 30,
            top: 490,
            child: Text(
              '\$ ' '$stotal',
              style: const TextStyle(
                  fontSize: 14,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.bold),
            ),
          ),

          Positioned(
            right: 30,
            top: 570,
            child: Text(
              '\$' '$total',
              style: const TextStyle(
                  fontSize: 14,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Positioned(
            left: 30,
            top: 530,
            child: Text(
              'Delivery Free',
              style: TextStyle(
                  fontSize: 14,
                  color: Color.fromARGB(255, 155, 154, 154),
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Positioned(
            left: 30,
            top: 570,
            child: Text(
              'Total',
              style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.bold),
            ),
          ),
          //---------------------------------------------------Linhas
          const Positioned(
            left: 28,
            top: 510,
            child: Text(
              '_________________________________________________________________________',
              style: TextStyle(
                  fontSize: 10,
                  color: Color.fromARGB(255, 212, 212, 212),
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Positioned(
            left: 28,
            top: 545,
            child: Text(
              '_________________________________________________________________________',
              style: TextStyle(
                  fontSize: 10,
                  color: Color.fromARGB(255, 212, 212, 212),
                  fontWeight: FontWeight.bold),
            ),
          ),
          //---------------------------------------------------Botao place order
          Positioned(
            right: 35,
            top: 650,
            child: SizedBox(
              width: 320,
              height: 60,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 155, 105, 196),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: const BorderSide(
                      color: Color.fromARGB(255, 203, 141, 253),
                      width: 1,
                    ),
                  ),
                ),
                child: const Text(
                  'Place Order',
                  style: TextStyle(
                    fontSize: 17,
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 245, 244, 244),
    );
  }
}
