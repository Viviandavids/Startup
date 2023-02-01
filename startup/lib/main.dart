import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StackContainer(),
    );
  }
}

class StackContainer extends StatelessWidget {
  const StackContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.5,
                color: Colors.purple,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.5,
                color: Colors.white,
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 80),
            child: const ServicePage(),
          )
        ],
      ),
    );
  }
}

class ServicePage extends StatelessWidget {
  const ServicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [
              Colors.purple.shade200,
              Colors.purple.shade400,
              Colors.purple.shade600,
              Colors.purple.shade800,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            Icons.airplane_ticket_outlined,
            size: 50,
            color: Colors.white,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text("\$09.99",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold)),
          const Text("per month",
              style: TextStyle(
                color: Colors.white,
              )),
          Divider(
            color: Colors.purple.shade200,
            thickness: 2,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text("START UP",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 20,
          ),
          const Text("Disk Space - 200GB",
              style: TextStyle(
                color: Colors.white,
              )),
          const Text("Bandwidth -  30GB",
              style: TextStyle(
                color: Colors.white,
              )),
          const Text("Database- 03",
              style: TextStyle(
                color: Colors.white,
              )),
          const Text("Email Address - 10 ",
              style: TextStyle(
                color: Colors.white,
              )),
          Text("24/7 Support - No ",
              style: TextStyle(
                color: Colors.purple.shade200,
              )),
          const Text("Email Support - Yes",
              style: TextStyle(
                color: Colors.white,
              )),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                    const EdgeInsets.symmetric(
                  horizontal: 60,
                  vertical: 10,
                )),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)))),
            onPressed: () {},
            child: const Text(
              "SIGN UP",
              style: TextStyle(color: Colors.purple),
            ),
          ),
        ],
      ),
    );
  }
}
