import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:move_mate/bottom_nav_bar.dart';
import 'package:move_mate/constants/constants.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _search = TextEditingController();
  double _width = 360;
  void resize() {
    setState(() {
      _width = 340;
    });
  }

  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(milliseconds: 100),
      (() => resize()),
    );
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          const BottomNavBar(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var curve = Curves.easeOut;

        var tween =
            Tween<double>(begin: .8, end: 1).chain(CurveTween(curve: curve));

        return FadeTransition(
          opacity: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Animate(
              effects: const [
                MoveEffect(
                    begin: Offset(0, 0),
                    end: Offset(0, -60),
                    duration: Duration(milliseconds: 500)),
              ],
              child: Container(
                padding: const EdgeInsets.fromLTRB(10, 130, 10, 20),
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: primaryColor,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(_createRoute());
                          },
                          child: Animate(
                            effects: const [
                              MoveEffect(
                                  begin: Offset(-30, 0),
                                  end: Offset(0, 0),
                                  duration: Duration(milliseconds: 500)),
                            ],
                            child: const Icon(
                              Icons.arrow_back_ios_rounded,
                              color: white,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Animate(
                          effects: const [],
                          child: AnimatedContainer(
                            alignment: Alignment.centerLeft,
                            width: _width,
                            duration: const Duration(milliseconds: 500),
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60),
                              color: white,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.search,
                                      color: primaryColor,
                                      size: 25,
                                    ),
                                    SizedBox(
                                      height: 50,
                                      width: MediaQuery.of(context).size.width *
                                          .5,
                                      child: TextFormField(
                                        autofocus: true,
                                        textCapitalization:
                                            TextCapitalization.sentences,
                                        textInputAction: TextInputAction.next,
                                        cursorColor: primaryColor,
                                        textAlign: TextAlign.start,
                                        keyboardType: TextInputType.name,
                                        controller: _search,
                                        style: const TextStyle(),
                                        decoration: const InputDecoration(
                                          contentPadding: EdgeInsets.fromLTRB(
                                              10, 10, 10, 10),
                                          hintText:
                                              'Enter the receipt number...',
                                          hintStyle: TextStyle(
                                              color: primarygreyDark,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w300),
                                          border: InputBorder.none,
                                          filled: true,
                                          focusColor: white,
                                          fillColor: white,
                                          hoverColor: white,
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(5),
                                                topRight: Radius.circular(5),
                                                bottomLeft: Radius.circular(5),
                                                bottomRight: Radius.circular(5),
                                              ),
                                              borderSide: BorderSide(
                                                  color: white, width: 0)),
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(5),
                                                topRight: Radius.circular(5),
                                                bottomLeft: Radius.circular(5),
                                                bottomRight: Radius.circular(5),
                                              ),
                                              borderSide: BorderSide(
                                                  color: white, width: 0)),
                                          errorBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(4)),
                                              borderSide: BorderSide(
                                                width: 1,
                                                color: Colors.red,
                                              )),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(4)),
                                            borderSide: BorderSide(
                                              width: 1,
                                              color: Colors.red,
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                const CircleAvatar(
                                  backgroundColor: primaryOrange,
                                  child: Icon(
                                    Icons.receipt_outlined,
                                    color: white,
                                    size: 20,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Animate(
              effects: const [
                MoveEffect(
                    begin: Offset(0, 180),
                    end: Offset(0, -60),
                    duration: Duration(milliseconds: 500),
                    delay: Duration(milliseconds: 100)),
                FadeEffect(
                  begin: .06,
                  duration: Duration(
                    milliseconds: 600,
                  ),
                )
              ],
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: white,
                    boxShadow: [
                      BoxShadow(
                        color: primaryColor.withOpacity(.07),
                        blurStyle: BlurStyle.normal,
                        spreadRadius: 10,
                        blurRadius: 9,
                        offset: const Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      searchCards(
                        'Macbook pro M2',
                        '#NE2323424553566 • Paris',
                        ' Morocco',
                      ),
                      searchCards(
                        'Macbook pro M2',
                        '#NE2323424553566 • Paris',
                        ' Morocco',
                      ),
                      searchCards(
                        'Macbook pro M2',
                        '#NE2323424553566 • Paris',
                        ' Morocco',
                      ),
                      searchCards(
                        'Macbook pro M2',
                        '#NE2323424553566 • Paris',
                        ' Morocco',
                      ),
                      searchCards(
                        'Macbook pro M2',
                        '#NE2323424553566 • Paris',
                        ' Morocco',
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget searchCards(title, subtext1, subtext2) {
    return Column(
      children: [
        const SizedBox(
          height: 8,
        ),
        Row(
          children: [
            const CircleAvatar(
              backgroundColor: primaryColor,
              child: Icon(
                FontAwesomeIcons.box,
                color: white,
                size: 22,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Animate(
              effects: const [
                MoveEffect(
                    begin: Offset(0, 60),
                    end: Offset(0, -0),
                    duration: Duration(milliseconds: 700),
                    delay: Duration(milliseconds: 150)),
                FadeEffect(
                  begin: .06,
                  duration: Duration(
                    milliseconds: 600,
                  ),
                )
              ],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        color: black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        subtext1,
                        style: const TextStyle(
                            color: primarygreyDark,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                      const Icon(
                        Icons.arrow_right_alt_sharp,
                        color: primarygreyDark,
                      ),
                      Text(
                        subtext2,
                        style: const TextStyle(
                            color: primarygreyDark,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
        const SizedBox(height: 8),
        Animate(effects: const [
          MoveEffect(
              begin: Offset(0, 60),
              end: Offset(0, -0),
              duration: Duration(milliseconds: 800),
              delay: Duration(milliseconds: 300)),
          FadeEffect(
            begin: .06,
            duration: Duration(
              milliseconds: 500,
            ),
          )
        ], child: const Divider())
      ],
    );
  }
}
