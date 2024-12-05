import 'package:flutter/material.dart';
import 'package:myntra_ui/constants.dart';
import 'historyscreen.dart';

class TransctionScreen extends StatefulWidget {
  const TransctionScreen({super.key});

  @override
  State<TransctionScreen> createState() => _TransctionScreenState();
}

class _TransctionScreenState extends State<TransctionScreen> {
  @override
  Widget build(BuildContext context) {
    final Receiver arg = ModalRoute.of(context)?.settings.arguments as Receiver;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color.fromARGB(255, 16, 160, 24),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Transaction Successful",
              style:
                  TextStyle(fontFamily: '', fontSize: 20, color: Colors.white),
            ),
            Text(
                style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                    color: Colors.white54),
                "  ${DateTime.now().hour}:${DateTime.now().minute} on ${DateTime.now().day} Nov ${DateTime.now().year}"),
          ],
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              elevation: 0.5,
              child: Center(
                child: Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.all(8),
                  height: 400,
                  width: MediaQuery.sizeOf(context).width - 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        " Paid to",
                        style: TextStyle(fontSize: 15),
                      ),
                      ListTile(
                        title: Text("${arg.name.toString()}"),
                        leading: const Card(
                          color: Color.fromARGB(255, 107, 5, 170),
                          child: Icon(
                            Icons.person_outline_outlined,
                            color: Colors.white,
                            size: 42,
                          ),
                        ),
                        subtitle: const Text(
                          "Qhoiaih6498798@ybl",
                          style: TextStyle(
                              fontFamily: "", fontWeight: FontWeight.normal),
                        ),
                        trailing: Text(
                          "₹${arg.moneytrans.toString()}",
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                      const Divider(
                        thickness: 0.5,
                        indent: 0,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.notes_outlined),
                          Text(
                            "payment details                                        ",
                            style: TextStyle(
                                fontFamily: "", fontWeight: FontWeight.normal),
                          ),
                          Icon(
                            Icons.arrow_drop_up,
                            size: 27,
                          )
                        ],
                      ),
                      const ListTile(
                        title: Text(
                          "Transction ID",
                          style: TextStyle(
                              color: Colors.grey, fontFamily: "", fontSize: 14),
                        ),
                        subtitle: Text(
                          "Tkgak314161654987987494",
                          style: TextStyle(fontSize: 15, fontFamily: ""),
                        ),
                        trailing: Icon(
                          Icons.copy_outlined,
                          size: 20,
                          color: const Color.fromARGB(255, 107, 5, 170),
                        ),
                      ),
                      ListTile(
                        leading: const Card(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: ClipRect(
                            clipBehavior: Clip.antiAlias,
                            child: Image(
                              image: AssetImage("assets/images/axis.jpg"),
                              fit: BoxFit.cover,
                              height: 35,
                              width: 35,
                            ),
                          ),
                        ),
                        title: const Text(
                          "XXXXXXXXX4999",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: "",
                              fontSize: 14),
                        ),
                        subtitle: const Text(
                          "UTR: Tkgakgia314161654987987494",
                          style: TextStyle(fontSize: 15, fontFamily: ""),
                        ),
                        trailing: Column(
                          children: [
                            Text(
                              "${arg.moneytrans}",
                              style: const TextStyle(
                                  fontSize: 14,
                                  fontFamily: "",
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const Icon(
                              Icons.copy_outlined,
                              size: 20,
                              color: const Color.fromARGB(255, 107, 5, 170),
                            )
                          ],
                        ),
                      ),
                      const Divider(
                        thickness: 0.5,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Card(
                                margin: EdgeInsets.all(10),
                                color: const Color.fromARGB(255, 107, 5, 170),
                                child: Icon(
                                  Icons.arrow_outward,
                                  size: 40,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "Pay Again",
                                style: TextStyle(
                                    color:
                                        const Color.fromARGB(255, 107, 5, 170),
                                    fontSize: 12),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Card(
                                margin: EdgeInsets.all(10),
                                color: const Color.fromARGB(255, 107, 5, 170),
                                child: Icon(
                                  Icons.history,
                                  size: 40,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "View History",
                                style: TextStyle(
                                    color:
                                        const Color.fromARGB(255, 107, 5, 170),
                                    fontSize: 12),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Card(
                                margin: EdgeInsets.all(10),
                                color: const Color.fromARGB(255, 107, 5, 170),
                                child: Icon(
                                  Icons.call_split,
                                  size: 40,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "Split Expenses",
                                style: TextStyle(
                                    color:
                                        const Color.fromARGB(255, 107, 5, 170),
                                    fontSize: 12),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Card(
                                margin: EdgeInsets.all(10),
                                color: const Color.fromARGB(255, 107, 5, 170),
                                child: Icon(
                                  Icons.share_outlined,
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ),
                              Text(
                                "Share Rreceipt",
                                style: TextStyle(
                                    color:
                                        const Color.fromARGB(255, 107, 5, 170),
                                    fontSize: 12),
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Card(
              elevation: 0.5,
              child: Container(
                height: 60,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.support_agent_outlined),
                    Text(
                      "Contact PhonePe Support",
                      style: TextStyle(
                          fontFamily: "", fontWeight: FontWeight.w400),
                    ),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
              ),
            ),
            Center(
              child: Container(
                height: 130,
                width: 110,
                child: Image.asset(
                  "assets/images/upiimage.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
