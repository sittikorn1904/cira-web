// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class FeatureTable extends StatelessWidget {
  const FeatureTable({super.key});

  @override
  Widget build(BuildContext context) {
    var columnWidths = {
      0: FixedColumnWidth(MediaQuery.of(context).size.width < 768 ? 300 : 490),
      1: FixedColumnWidth(170),
      2: FixedColumnWidth(170),
      3: FixedColumnWidth(170),
    };
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Table(
            columnWidths: columnWidths,
            children: [
              TableRow(
                children: [
                  Text(
                    "Features",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "  Startup",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextButton.icon(
                          onPressed: () {},
                          icon: Text("Try for free"),
                          label: Icon(Icons.arrow_right_alt_rounded),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "  Business",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextButton.icon(
                          onPressed: () {},
                          icon: Text("Try for free"),
                          label: Icon(Icons.arrow_right_alt_rounded),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "  Enterprise",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextButton.icon(
                          onPressed: () {},
                          icon: Text("Try for free"),
                          label: Icon(Icons.arrow_right_alt_rounded),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width < 768 ? 810 : 1000,
            height: 1,
            color: Colors.grey,
            margin: EdgeInsets.only(bottom: 10),
          ),
          Text(
            "Actions",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Table(
            columnWidths: columnWidths,
            children: [
              TableRow(
                children: [
                  Text(
                    "Included actions (per month)",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Center(child: Text("10,000")),
                  Center(child: Text("50,000")),
                  Center(child: Text("Unlimited")),
                ],
              ),
              TableRow(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      "Whenever an AI Block classifies an image, a PDF or a piece of text (e.g. one email body) this counts as an Action. Also, every operation/step in a Flow like sending an email or updating a record in your CRM counts as an Action.",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 110, 109, 110),
                      ),
                    ),
                  ),
                  SizedBox.shrink(),
                  SizedBox.shrink(),
                  SizedBox.shrink(),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "AI Blocks",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Table(
            columnWidths: columnWidths,
            children: [
              TableRow(
                children: [
                  Text(
                    "Active AI Blocks",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Center(child: Text("Unlimited")),
                  Center(child: Text("Unlimited")),
                  Center(child: Text("Unlimited")),
                ],
              ),
              TableRow(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      "Active AI blocks that you can have working simultaneously. An AI Blocks is an artificial intelligence model that you can integrate in a flow.",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 110, 109, 110),
                      ),
                    ),
                  ),
                  SizedBox.shrink(),
                  SizedBox.shrink(),
                  SizedBox.shrink(),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
