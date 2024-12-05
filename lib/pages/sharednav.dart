import 'package:flutter/material.dart';
import 'package:myntra_ui/constants.dart';

class Sharednav extends StatefulWidget {
  const Sharednav({super.key});

  @override
  State<Sharednav> createState() => _SharednavState();
}

class _SharednavState extends State<Sharednav> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colour,
        leadingWidth: 80,
        leading:
            //margin: EdgeInsets.all(MediaQuery.devicePixelRatioOf(context)),
            Stack(
          alignment: const AlignmentDirectional(0.5, -1),
          children: [
            ActionChip(
              labelPadding:
                  EdgeInsets.all(MediaQuery.devicePixelRatioOf(context)),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              padding: EdgeInsets.all(MediaQuery.devicePixelRatioOf(context)),
              label: Stack(
                alignment: const AlignmentDirectional(4.3, 1.9),
                children: [
                  Icon(
                    size: 36,
                    Icons.person_2_outlined,
                    color: colour,
                  ),
                  Container(
                      height: 19,
                      width: 24,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                          color: Colors.white,
                          image: DecorationImage(
                              opacity: 100,
                              image: AssetImage(
                                  "assets/images/india_flag.svg.webp"),
                              fit: BoxFit.fill))),
                ],
              ),
            ),
          ],
        ),
        title: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Add Address",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.arrow_drop_down,
                  color: Colors.white,
                )
              ],
            ),
            Row(
              children: [
                Text(
                  "Busy kingdom ",
                  style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                      fontFamily: "roboto-regular"),
                ),
                Icon(
                  Icons.pin_drop_sharp,
                  size: 18,
                  color: Colors.white70,
                )
              ],
            ),
          ],
        ),
        actions: const [
          Icon(
            Icons.notification_add,
            color: Colors.white,
          ),
          SizedBox(
            width: 5,
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Icon(
              Icons.question_mark_sharp,
              color: Colors.white,
              size: 22,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedFontSize: 15,
          selectedIconTheme: IconThemeData(size: 29),
          currentIndex: index,
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: GestureDetector(
                  child: const Icon(Icons.home_outlined),
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: GestureDetector(
                  child: const Icon(Icons.history_outlined),
                ),
                label: "History"),
          ]),
      floatingActionButton: Container(
        height: 65,
        width: 65,
        child: FloatingActionButton(
          backgroundColor: colour,
          elevation: 5,
          enableFeedback: true,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(22))),
          onPressed: () {},
          child: const Icon(
            Icons.qr_code_outlined,
            size: 30,
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      body: pages[index],
    );
  }
}
