// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:cira_web/footer.dart';
import 'package:cira_web/table.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'controller.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  usePathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "CiRA",
          style: TextStyle(
            color: Color.fromARGB(255, 32, 10, 71),
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0.5,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: ListView(
          children: [
            Column(
              children: [
                Text(
                  "Pricing",
                  style: TextStyle(
                    color: Color.fromARGB(255, 27, 3, 58),
                    fontSize: MediaQuery.of(context).size.width > 768 ? 50 : 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Wrap(
                alignment: WrapAlignment.center,
                spacing: 10,
                children: [
                  Container(
                    constraints: BoxConstraints(
                      minWidth: 280,
                      minHeight: 350,
                      maxWidth: 280,
                      maxHeight: 350,
                    ),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                              child: Container(),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                fixedSize: MaterialStateProperty.all(
                                  Size.fromHeight(40),
                                ),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                              child: Text(""),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    constraints: BoxConstraints(
                      minWidth: 280,
                      minHeight: 350,
                    ),
                    child: Card(
                      color: Color.fromARGB(255, 207, 224, 255),
                    ),
                  ),
                  Container(
                    constraints: BoxConstraints(
                      minWidth: 280,
                      minHeight: 350,
                    ),
                    child: Card(),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                padding: const EdgeInsets.all(15),
                // constraints: BoxConstraints(
                //   maxWidth: 1200,
                // ),
                child: FeatureTable(),
              ),
            ),
            Container(
              height: 500,
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
