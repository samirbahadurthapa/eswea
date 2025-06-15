import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, dynamic>> items = [
    {'icon': Icons.phone_android, 'label': 'Topup & Data'},
    {'icon': Icons.lightbulb, 'label': 'Electricity'},
    {'icon': Icons.water, 'label': 'Water'},
    {'icon': Icons.wifi, 'label': 'Internet'},
    {'icon': FontAwesomeIcons.buildingColumns, 'label': 'Gov.Payment'},
    {'icon': Icons.tv, 'label': 'TV'},
    {'icon': Icons.school, 'label': 'Education Fee'},
  ];
  final List<Map<String, dynamic>> newItems = [
    {'icon': Icons.flight, 'label': 'Airlines'},
    {'icon': Icons.public, 'label': 'Intl Airlines'},
    {'icon': Icons.hotel, 'label': 'Hotels'},
    {'icon': Icons.directions_bus, 'label': 'Bus Tickets'},
    {'icon': Icons.how_to_vote, 'label': 'Voting'},
    {
      'icon': FontAwesomeIcons.cableCar,
      'label': 'Cable Car',
    }, // FontAwesome (v6+)
    {'icon': Icons.event, 'label': 'Events'},
  ];
  final List<Map<String, dynamic>> insurance = [
    {'icon': Icons.support_agent, 'label': 'eSewa Care'},
    {'icon': Icons.directions_car, 'label': 'Bluebook Renewal'},
    {'icon': Icons.policy, 'label': 'Policy Renewal'},
    {'icon': Icons.hearing, 'label': 'Hearing'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 1),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
              child: Container(
                width: double.infinity,
                height: 190,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 5, 226, 27),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(45),
                    bottomRight: Radius.circular(45),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(bottom: 100, left: 20, right: 10),
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d",
                            ),
                            fit: BoxFit.cover,
                          ),
                          color: Colors.amber,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Hi, Samir",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.search, color: Colors.white),
                      SizedBox(width: 10),
                      Icon(Icons.notification_add, color: Colors.white),
                      SizedBox(width: 10),
                      Icon(Icons.android, color: Colors.white),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 100, left: 15, right: 15),
              child: Column(
                children: [
                  Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(15),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.wallet),
                                Padding(
                                  padding: const EdgeInsets.only(right: 30),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Npr 1,00,000",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text("Balance"),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 30),
                                  child: CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Colors.grey,
                                    backgroundImage: AssetImage(
                                      "assets/eye.png",
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.military_tech),
                                    SizedBox(width: 8),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "XXXX.XX",
                                          style: TextStyle(fontSize: 17),
                                        ),
                                        Text("Reward Points"),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Icon(Icons.money),
                                  Text("Send"),
                                  Text("Money"),
                                ],
                              ),
                              Column(
                                children: [
                                  Icon(Icons.monetization_on),
                                  Text("Bank"),
                                  Text("Transfer"),
                                ],
                              ),
                              Column(
                                children: [
                                  Icon(Icons.credit_card),
                                  Text("Card"),
                                  Text("Payment"),
                                ],
                              ),
                              Column(
                                children: [
                                  Icon(Icons.money_off),
                                  Text("Remittance"),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text(
                            "Utility & Bill Payments",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 17,
                            ),
                          ),
                        ),
                        Expanded(
                          child: GridView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: items.length,
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4,
                                  mainAxisSpacing: 1,
                                  crossAxisSpacing: 10,
                                  childAspectRatio: 2.5 / 2,
                                ),
                            itemBuilder: (context, index) {
                              return Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    items[index]['icon'],
                                    size: 30,
                                    color: Colors.black,
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    //      Text(
                                    //   insurance[index]['label'],
                                    //   textAlign: TextAlign.center,
                                    //   style:  TextStyle(fontSize: 11),
                                    //   overflow: TextOverflow.ellipsis,
                                    //   maxLines: 2,
                                    // )
                                    items[index]['label'],
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 12),
                                    maxLines: 2,
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 100,
                    width: double.maxFinite,
                    decoration: BoxDecoration(color: Colors.white),
                    child: Image(image: AssetImage("assets/esewa.jpg")),
                  ),

                  SizedBox(height: 10),
                  Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text(
                            "Travels and Ticketing",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 17,
                            ),
                          ),
                        ),
                        Expanded(
                          child: GridView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: newItems.length,
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4,
                                  mainAxisSpacing: 1,
                                  crossAxisSpacing: 10,
                                  childAspectRatio: 2.5 / 2,
                                ),
                            itemBuilder: (context, index) {
                              return Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    newItems[index]['icon'],
                                    size: 30,
                                    color: Colors.black,
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    newItems[index]['label'],
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 200,
                    width: double.infinity,

                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text(
                            "Insurance",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 17,
                            ),
                          ),
                        ),
                        Expanded(
                          child: GridView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: insurance.length,
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4,
                                  mainAxisSpacing: 1,
                                  crossAxisSpacing: 10,
                                  childAspectRatio: 2.5 / 2,
                                ),
                            itemBuilder: (context, index) {
                              return Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    insurance[index]['icon'],
                                    size: 30,
                                    color: Colors.black,
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    insurance[index]['label'],
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 11),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
