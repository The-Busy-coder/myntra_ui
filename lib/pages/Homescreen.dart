import 'package:flutter/material.dart';
import 'package:myntra_ui/custombtn.dart';
import '../constants.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../custombtn.dart';
import 'historyscreen.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int index = 0;
  List<Widget> pages = [
    Homescreen(),
    Historyscreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      extendBody: true,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Stack(alignment: Alignment.topRight, children: [
                  Container(
                    padding:
                        EdgeInsets.all(MediaQuery.devicePixelRatioOf(context)),
                    width: MediaQuery.sizeOf(context).width,
                    height: 150,
                    child: Image.asset(
                      "assets/images/images.jpeg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Icon(
                    Icons.cancel_outlined,
                    color: Colors.white,
                  )
                ]),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(0),
              margin: const EdgeInsets.all(5),
              height: 155,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              width: MediaQuery.sizeOf(context).width - 10,
              child: CarouselSlider(
                  items: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black,
                          image: const DecorationImage(
                              image:
                                  AssetImage("assets/images/images (1).jpeg"),
                              fit: BoxFit.fill)),
                    ),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.green,
                            image: const DecorationImage(
                                image:
                                    AssetImage("assets/images/images (2).jpeg"),
                                fit: BoxFit.fill))),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue,
                            image: const DecorationImage(
                                image: AssetImage(
                                    "assets/images/maxresdefault.jpg"),
                                fit: BoxFit.fill))),
                  ],
                  disableGesture: false,
                  options: CarouselOptions(
                      autoPlay: true,
                      scrollDirection: Axis.horizontal,
                      disableCenter: true,
                      pageSnapping: true,
                      enlargeCenterPage: true)),
            ),
            Center(
              child: Container(
                  padding: const EdgeInsets.all(5),
                  height: 194,
                  width: MediaQuery.sizeOf(context).width - 13,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "  Transfer Money",
                        style: TextStyle(
                          fontSize: 17,
                          //fontWeight: FontWeight.bold,
                          fontFamily: 'roboto',
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 100,
                        width: MediaQuery.sizeOf(context).width - 10,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: const Column(
                                children: [
                                  Chip(
                                      backgroundColor:
                                          Color.fromARGB(255, 107, 5, 170),
                                      padding: EdgeInsets.all(10),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15))),
                                      label: Icon(
                                        Icons.person,
                                        color: Colors.white,
                                      )),
                                  Text(
                                    "To Mobile",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'roboto-regular'),
                                  ),
                                  Text(
                                    "Number",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'roboto-regular'),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Chip(
                                      backgroundColor:
                                          Color.fromARGB(255, 107, 5, 170),
                                      padding: EdgeInsets.all(10),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15))),
                                      label: Icon(
                                        FontAwesomeIcons.bank,
                                        color: Colors.white,
                                      )),
                                  Text("To Bank/UPI ID",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'roboto-regular')),
                                ],
                              ),
                            ),
                            Container(
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Chip(
                                      backgroundColor:
                                          Color.fromARGB(255, 107, 5, 170),
                                      padding: EdgeInsets.all(10),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15))),
                                      label: Icon(
                                        FontAwesomeIcons.circleArrowDown,
                                        color: Colors.white,
                                      )),
                                  Text(
                                    "To Self Account",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'roboto-regular'),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: const Column(
                                children: [
                                  Chip(
                                      backgroundColor:
                                          Color.fromARGB(255, 107, 5, 170),
                                      padding: EdgeInsets.all(10),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15))),
                                      label: Icon(
                                        FontAwesomeIcons.bank,
                                        color: Colors.white,
                                      )),
                                  Text("Check Bank",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'roboto-regular')),
                                  Text("Balance",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'roboto-regular'))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width - 10,
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 9,
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 38,
                              width: 90,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                  color: Colors.white),
                              child: RichText(
                                  softWrap: true,
                                  text: const TextSpan(
                                      text: "UPI Lite:",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 13),
                                      children: [
                                        TextSpan(
                                            text: " ₹0",
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Color.fromARGB(
                                                    255, 194, 36, 25))),
                                      ])),
                            ),
                            const SizedBox(
                              width: 14,
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 38,
                              width: 270,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                  color: Colors.white),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.qr_code),
                                  Text(
                                    "   UPI ID: userupiid@ybl   ",
                                    style: TextStyle(
                                        fontFamily: 'roboto-regular',
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 13,
                                    weight: 50,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                  color: Colors.white,
                  child: Container(
                    alignment: Alignment.center,
                    height: 45,
                    width: 125,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.account_balance_wallet_outlined,
                          size: 30,
                          color: colour,
                        ),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Phone pe",
                              style: TextStyle(fontFamily: 'roboto-regular'),
                            ),
                            Text(
                              "Wallet",
                              style: TextStyle(fontFamily: 'roboto'),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  child: Container(
                    height: 45,
                    width: 125,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.wallet_giftcard_outlined,
                          size: 30,
                          color: colour,
                        ),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Explore",
                                style: TextStyle(fontFamily: 'roboto-regular')),
                            Text(
                              "Rewards",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'roboto'),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  child: Container(
                    height: 45,
                    width: 125,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          FontAwesomeIcons.bell,
                          size: 26,
                          color: colour,
                        ),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Refer &",
                                style: TextStyle(fontFamily: 'roboto-regular')),
                            Text(
                              "Get ₹100",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'roboto'),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
