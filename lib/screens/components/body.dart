import "package:flutter/material.dart";
import 'package:flutter_svg/svg.dart';
import 'package:petsapp/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //providing total height and width of the screen
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        SizedBox(
          //using 20% of the screen height
          height: size.height * 0.3,
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                  top: 5 + kDefaultPadding,
                  left: kDefaultPadding,
                  right: kDefaultPadding,
                  bottom: -15 + kDefaultPadding,
                ),
                height: size.height * 0.3 - 27,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.center,
                      end: Alignment.bottomCenter,
                      colors: <Color>[
                        Colors.purple,
                        Color.fromARGB(255, 179, 52, 94),
                      ]),
                  //color: Color.fromARGB(255, 18, 46, 68),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Row(
                  children: <Widget>[
                    Text(
                      "Welcome",
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Image.asset("assets/images/logo.png")
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  alignment: Alignment.center,
                  margin:
                      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: Colors.purple.withOpacity(0.3),
                        )
                      ]),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          onChanged: (value) {},
                          decoration: InputDecoration(
                            hintText: "Search ",
                            hintStyle: TextStyle(
                              color: Colors.purple.withOpacity(0.5),
                            ),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                        ),
                      ),
                      SvgPicture.asset(
                        "assets/icons/search.svg",
                        color: Colors.purple,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
