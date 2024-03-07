import "package:flutter/material.dart";
import "package:krakenedu/components/recent_transaction.dart";
import "package:krakenedu/components/topearn_customize.dart";
import "package:percent_indicator/linear_percent_indicator.dart";

class InvestPage extends StatelessWidget {
  const InvestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back),
          title: const Text("Buy My First Car"),
        ),
        body: ListView(
          children: [
            Column(
              children: [
                //First Row
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 8.0,
                    bottom: 8.0,
                  ),
                  child: Container(
                    height: 170,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.pink.shade100,
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "10,000.00",
                                style: TextStyle(
                                    fontSize: 24.0,
                                    color: Colors.pink.shade900,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "70,000",
                                style: TextStyle(
                                    fontSize: 24.0,
                                    color: Colors.pink.shade900,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 24,
                            right: 24,
                            top: 2.0,
                            bottom: 8.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Total amount invested",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.grey.shade900),
                              ),
                              Text(
                                "Current Value",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.grey.shade900),
                              ),
                            ],
                          ),
                        ),
                        LinearPercentIndicator(
                          animation: true,
                          animationDuration: 1000,
                          lineHeight: 10,
                          percent: 0.60,
                          progressColor: Colors.black,
                          backgroundColor: Colors.grey,
                          barRadius: const Radius.circular(10),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 8.0, right: 18.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "5th May 2023",
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                //Second Row

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TopearnCustomize(
                      optionText: "Top-up",
                      optionIcon: Icons.add,
                      iconColor: Colors.green,
                      containerColor: Colors.grey.shade100,
                      fontColor: Colors.black,
                      onTap: () {},
                    ),
                    TopearnCustomize(
                      optionText: "Earnings",
                      optionIcon: Icons.insert_chart,
                      iconColor: Colors.purple.shade200,
                      containerColor: Colors.grey.shade100,
                      fontColor: Colors.black,
                      onTap: () {},
                    ),
                    TopearnCustomize(
                      optionText: "Customise",
                      optionIcon: Icons.settings,
                      iconColor: Colors.blue.shade500,
                      containerColor: Colors.grey.shade100,
                      fontColor: Colors.black,
                      onTap: () {},
                    ),
                  ],
                ),

                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 10.0, left: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "You invested in",
                            style: TextStyle(
                                fontSize: 19, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 31,
                        right: 31,
                        top: 8.0,
                        bottom: 8.0,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 85,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  border:
                                      Border.all(color: Colors.grey.shade300)),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 65, right: 20, top: 5.0),
                                        child: Text(
                                          "DefiPulse index",
                                          style: TextStyle(
                                              color: Colors.purple.shade800,
                                              fontSize: 18),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 17.0),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.purple.shade800),
                                          child: const Center(
                                            child: Text(
                                              "D",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10.0),
                                          child: Row(
                                            children: [
                                              const Text(
                                                "0.0026",
                                                style: TextStyle(
                                                  fontSize: 18,
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 150,
                                              ),
                                              Text(
                                                "+7.84%",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color:
                                                        Colors.green.shade800),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

                    //Begining of the recent transactions
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Recent transaction",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "See all",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.purple.shade800,
                              ),
                            )
                          ]),
                    ),

                    RecentTransact(
                      recentranscontainerColor: Colors.grey.shade300,
                      recentransIcon: Icons.add,
                      recentransColor: Colors.orange.shade400,
                      recentransTitle: "Payout for My new car",
                      recentTransDate: "January 5, 2020",
                      recenttransAmount: "10,000",
                      transtatusText: "pending",
                      transtatusColor: Colors.amber.shade400,
                    ),
                    RecentTransact(
                      recentranscontainerColor: Colors.grey.shade300,
                      recentransIcon: Icons.arrow_circle_down_sharp,
                      recentransColor: Colors.green.shade800,
                      recentransTitle: "Fund Plan",
                      recentTransDate: "January 8, 2020",
                      recenttransAmount: "10,000",
                      transtatusText: "Successful",
                      transtatusColor: Colors.green,
                    ),

                    RecentTransact(
                      recentranscontainerColor: Colors.grey.shade300,
                      recentransIcon: Icons.arrow_downward_sharp,
                      recentransColor: Colors.red.shade800,
                      recentransTitle: "Fund Plan",
                      recentTransDate: "January 10, 2020",
                      recenttransAmount: "10,000",
                      transtatusText: "Cancelled",
                      transtatusColor: Colors.red.shade800,
                    )
                  ],
                )
                //Row 2

                //Row 3

                //Row 4

                //Row 5

                //Row 6
              ],
            ),
          ],
        ),
      ),
    );
  }
}
