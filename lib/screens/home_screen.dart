import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:move_mate/constants/constants.dart';
import 'package:move_mate/screens/search.dart';
import 'package:move_mate/widgets/search_widget.dart';
import 'package:move_mate/widgets/tracking_widget.dart';

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
            // =============custom appbar==============
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
                      child: const SearchWidget(),
                    )
                  ],
                ),
              ),
            ),
            // =============end of custom appbar==============
            // =============tracking info==============

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
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tracking',
                      style: TextStyle(
                          color: black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TrackingInfoWidget(),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // =============Available vehicles ==============

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
  // ============= vehicles card ==============

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
  // =============Custom routing  ==============

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
