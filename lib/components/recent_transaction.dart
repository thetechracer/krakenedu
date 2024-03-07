import "package:flutter/material.dart";

class RecentTransact extends StatelessWidget {
  final Color recentranscontainerColor;
  final IconData recentransIcon;
  final Color recentransColor;
  final String recentransTitle;
  final String recentTransDate;
  final String recenttransAmount;
  final String transtatusText;
  final Color transtatusColor;

  const RecentTransact(
      {super.key,
      required this.recentranscontainerColor,
      required this.recentransIcon,
      required this.recentransColor,
      required this.recentransTitle,
      required this.recentTransDate,
      required this.recenttransAmount,
      required this.transtatusText,
      required this.transtatusColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 7.0, bottom: 7),
      child: Container(
        height: 150,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white10,
            border: Border.all(
              color: Colors.grey.shade300,
            )),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: recentranscontainerColor,
                      ),
                      child: Icon(
                        recentransIcon,
                        color: recentransColor,
                        size: 20,
                      )),
                ),
                Text(
                  recentransTitle,
                  style: const TextStyle(fontSize: 20),
                )
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    recentTransDate,
                    style: const TextStyle(fontSize: 18),
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  Text(
                    recenttransAmount,
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 8.0,
                left: 20,
                right: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Transaction Status",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    transtatusText,
                    style: TextStyle(
                      color: transtatusColor,
                      fontSize: 18,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
