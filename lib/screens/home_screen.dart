import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:move_mate/constants/constants.dart';
import 'package:move_mate/screens/search.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primarygrey,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Animate(
              effects: const [
                MoveEffect(
                    begin: Offset(0, -300),
                    end: Offset(0, 0),
                    duration: Duration(milliseconds: 500)),
              ],
              child: Container(
                padding: const EdgeInsets.fromLTRB(20, 60, 20, 20),
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: primaryColor,
                ),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://images.unsplash.com/photo-1587064712555-6e206484699b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1964&q=80'),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    FaIcon(
                                      FontAwesomeIcons.mapMarkerAlt,
                                      color: primarygreyDark,
                                      size: 13,
                                    ),
                                    Text(
                                      ' Your location',
                                      style: TextStyle(
                                          fontSize: 12, color: primarygreyDark),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      ' Wertheimer, Illinois',
                                      style: TextStyle(
                                          fontSize: 14, color: primarygrey),
                                    ),
                                    Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: primarygrey,
                                      size: 17,
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                        CircleAvatar(
                          backgroundColor: white,
                          child: Icon(
                            Icons.notifications_none_outlined,
                            color: black,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(_createRoute());
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
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
                                  width:
                                      MediaQuery.of(context).size.width * .69,
                                  child: TextFormField(
                                    autofocus: false,
                                    enabled: false,
                                    textCapitalization:
                                        TextCapitalization.sentences,
                                    textInputAction: TextInputAction.next,
                                    cursorColor: primaryColor,
                                    textAlign: TextAlign.start,
                                    keyboardType: TextInputType.name,
                                    style: const TextStyle(),
                                    decoration: const InputDecoration(
                                      contentPadding:
                                          EdgeInsets.fromLTRB(10, 10, 10, 10),
                                      hintText: 'Enter the receipt number...',
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
                    )
                  ],
                ),
              ),
            ),
            Animate(
              effects: const [
                MoveEffect(
                    begin: Offset(0, 200),
                    end: Offset(0, 0),
                    duration: Duration(milliseconds: 390)),
                FadeEffect(
                  begin: .1,
                  duration: Duration(
                    milliseconds: 600,
                  ),
                )
              ],
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Tracking',
                      style: TextStyle(
                          color: black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      // padding: const EdgeInsets.all(20),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: white,
                        boxShadow: [
                          BoxShadow(
                            color: primaryColor.withOpacity(.04),
                            blurStyle: BlurStyle.normal,
                            spreadRadius: 4,
                            blurRadius: 5,
                            offset: const Offset(0, 0),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Shipment Number',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: primarygreyDark),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          'NEJ20089934122231',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700,
                                              color: black),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                      ],
                                    ),
                                    Image.asset(
                                      'assets/images/forklift.png',
                                      width: 53,
                                    )
                                  ],
                                ),
                                const Divider(),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          .44,
                                      child: Row(
                                        children: [
                                          CircleAvatar(
                                            backgroundColor:
                                                primaryOrange.withOpacity(.2),
                                            child: Image.asset(
                                              'assets/images/send.png',
                                              width: 25,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          const Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Sender',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500,
                                                    color: primarygreyDark),
                                              ),
                                              SizedBox(
                                                height: 3,
                                              ),
                                              Text(
                                                'Atlanta, 5243',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                    color: black),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          .3,
                                      child: const Row(
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Time',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500,
                                                    color: primarygreyDark),
                                              ),
                                              SizedBox(
                                                height: 3,
                                              ),
                                              Row(
                                                children: [
                                                  CircleAvatar(
                                                    backgroundColor:
                                                        primaryGreen,
                                                    radius: 3,
                                                  ),
                                                  SizedBox(
                                                    width: 4,
                                                  ),
                                                  Text(
                                                    '2 days- 3 days',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: black),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          .44,
                                      child: Row(
                                        children: [
                                          CircleAvatar(
                                            backgroundColor:
                                                primaryGreen.withOpacity(.2),
                                            child: Image.asset(
                                              'assets/images/receive.png',
                                              width: 25,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          const Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Receiver',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500,
                                                    color: primarygreyDark),
                                              ),
                                              SizedBox(
                                                height: 3,
                                              ),
                                              Text(
                                                'Chicago, 6342',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                    color: black),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          .3,
                                      child: const Row(
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Status',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500,
                                                    color: primarygreyDark),
                                              ),
                                              SizedBox(
                                                height: 3,
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    'Waiting to collect',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: black),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const Divider(),
                          const SizedBox(
                            height: 10,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add,
                                color: primaryOrange,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                'Add Stop',
                                style: TextStyle(
                                    color: primaryOrange,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 18,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Animate(
              effects: const [
                MoveEffect(
                    begin: Offset(0, 200),
                    end: Offset(0, 0),
                    duration: Duration(milliseconds: 390),
                    delay: Duration(milliseconds: 200)),
                FadeEffect(
                  begin: .1,
                  duration: Duration(
                    milliseconds: 600,
                  ),
                )
              ],
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Available vehicles',
                      style: TextStyle(
                          color: black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 210,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          vehicleCard('Ocean freight', 'international', 'ship'),
                          vehicleCard('Cargo freight', 'Reliable', 'truck'),
                          vehicleCard('Air freight', 'international', 'plane'),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }

  Widget vehicleCard(title, subtext, image) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Animate(
        effects: const [
          MoveEffect(
            begin: Offset(100, 0),
            end: Offset(0, 0),
            duration: Duration(milliseconds: 700),
            delay: Duration(milliseconds: 200),
          ),
        ],
        child: Container(
          width: MediaQuery.of(context).size.width * .37,
          padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: white,
            boxShadow: [
              BoxShadow(
                color: primaryColor.withOpacity(.03),
                blurStyle: BlurStyle.normal,
                spreadRadius: 4,
                blurRadius: 5,
                offset: const Offset(0, 0),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                    color: black, fontSize: 16, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                subtext,
                style: const TextStyle(
                    color: primarygreyDark,
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Animate(
                      effects: const [
                        MoveEffect(
                          begin: Offset(100, 0),
                          end: Offset(0, 0),
                          duration: Duration(milliseconds: 800),
                          delay: Duration(milliseconds: 200),
                        ),
                      ],
                      child: Image.asset(
                        'assets/images/$image.png',
                        width: 103,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          const SearchPage(),
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
}
