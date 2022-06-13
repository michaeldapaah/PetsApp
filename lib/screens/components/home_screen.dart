import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:petsapp/screens/signin_screen.dart';
import 'package:petsapp/screens/signup_screen.dart';

import '../../utils/color_utils.dart';
import 'body.dart';

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
      appBar: buildAppBar(),
      body: const Body(),
    );
  }
}

AppBar buildAppBar() {
  return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          "assets/icons/menu.svg",
          color: Colors.white,
        ),
        onPressed: () {},
      ),
      // title: const Text(
      //"Home",
      //style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      // ),
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[Color.fromARGB(255, 179, 52, 94), Colors.purple]),
        ),
      ));
}
