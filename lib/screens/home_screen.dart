import 'package:flutter/material.dart';
import 'package:petsapp/screens/signin_screen.dart';
import 'package:petsapp/screens/signup_screen.dart';

import '../utils/color_utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
            title: const Text(
              "Home",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[
                      Color.fromARGB(255, 179, 52, 94),
                      Colors.purple
                    ]),
              ),
            )),
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Center(
              child: ElevatedButton(
                child: const Text("Logout"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignInScreen(),
                      ));
                },
              ),
            )));
  }
}
