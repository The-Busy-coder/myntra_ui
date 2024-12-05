import 'package:flutter/material.dart';
import 'package:myntra_ui/constants.dart';
import 'package:myntra_ui/pages/transction.dart';

class Historyscreen extends StatefulWidget {
  const Historyscreen({super.key});

  @override
  State<Historyscreen> createState() => _HistoryscreenState();
}

class Receiver {
  String name = "";
  int moneytrans = 0;
  Receiver(this.name, this.moneytrans);
}

class _HistoryscreenState extends State<Historyscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: 150,
              decoration: const BoxDecoration(color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: SearchBar(
                      elevation: WidgetStateProperty.all(0),
                      hintText: "Search by name,number or UPI ID",
                      hintStyle: WidgetStateProperty.all(TextStyle(
                          color: Colors.grey.shade600,
                          fontFamily: "roboto-regular",
                          fontWeight: FontWeight.w500)),
                      backgroundColor: WidgetStateProperty.all(Colors.white),
                      shape: WidgetStateProperty.all(RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 0.5, color: Colors.black45),
                          borderRadius: BorderRadius.circular(14))),
                      leading: const Icon(
                        Icons.search,
                        size: 32,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(4),
                        child: Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade500),
                              borderRadius: BorderRadius.circular(8)),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Download statement ",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: "roboto-regular",
                                    fontWeight: FontWeight.w600),
                              ),
                              Icon(Icons.download_rounded),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 110,
                      ),
                      Container(
                        padding: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade500),
                            borderRadius: BorderRadius.circular(8)),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Filter ",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: "roboto-regular",
                                  fontWeight: FontWeight.w600),
                            ),
                            Icon(Icons.sort),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            Center(
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: NeverScrollableScrollPhysics(),
                itemCount: names.length,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 110,
                        width: MediaQuery.sizeOf(context).width - 10,
                        child: Stack(alignment: Alignment(0, 0.7), children: [
                          Card(
                            color: Colors.white,
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, 'transactionscreen',
                                    arguments:
                                        Receiver(names[index], money[index]));
                              },
                              child: ListTile(
                                subtitle: Text(names[index]),
                                title: const Text(
                                  "Paid to",
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontFamily: 'roboto-regular'),
                                ),
                                contentPadding: EdgeInsets.all(20),
                                isThreeLine: true,
                                trailing: Column(
                                  children: [
                                    Text(
                                      "₹${money[index]}",
                                      style: const TextStyle(
                                          fontSize: 18, fontFamily: "roboto"),
                                    ),
                                    Container(
                                      height: 30,
                                      width: 40,
                                      child: Card(
                                        shape: RoundedRectangleBorder(),
                                        child: Image.asset(
                                          "assets/images/SBI.jpg",
                                          alignment: Alignment.center,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                leading: Column(
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      child: Card(
                                        color: collors[index],
                                        child: Center(
                                            child: Text(
                                          "${names[index].characters.first}",
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 19,
                                              fontFamily: "roboto"),
                                        )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 34,
                            bottom: 8,
                            child: Text(
                              "${DateTime.now().hour}"
                              ":"
                              "${DateTime.now().minute}",
                              style: const TextStyle(
                                  fontFamily: "roboto-regular",
                                  fontSize: 10,
                                  fontWeight: FontWeight.w200),
                            ),
                          ),
                        ]),
                      ),
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 0,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
