import 'package:countup/countup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:move_mate/bottom_nav_bar.dart';
import 'package:move_mate/constants/constants.dart';

class CalculateSummary extends StatefulWidget {
  const CalculateSummary({super.key});

  @override
  State<CalculateSummary> createState() => _CalculateSummaryState();
}

class _CalculateSummaryState extends State<CalculateSummary> {
  bool _select = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 150, 20, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Animate(
                    effects: const [
                      MoveEffect(
                        begin: Offset(0, 200),
                        end: Offset(0, 0),
                        duration: Duration(milliseconds: 700),
                      ),
                      FadeEffect(
                        begin: 0,
                        duration: Duration(
                          milliseconds: 600,
                        ),
                      )
                    ],
                    child: Image.asset(
                      'assets/images/loggo.png',
                      height: 34,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Animate(
                    effects: const [
                      ScaleEffect(delay: Duration(milliseconds: 500)),
                      FadeEffect(
                        begin: 0,
                        duration: Duration(
                          milliseconds: 300,
                        ),
                      )
                    ],
                    child: Image.asset(
                      'assets/images/box.png',
                      height: 200,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Animate(
                effects: const [
                  MoveEffect(
                    begin: Offset(0, 200),
                    end: Offset(0, 0),
                    duration: Duration(milliseconds: 700),
                  ),
                  FadeEffect(
                    begin: 0,
                    delay: Duration(milliseconds: 300),
                    duration: Duration(
                      milliseconds: 300,
                    ),
                  )
                ],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Total Estimated Amount',
                      style: TextStyle(
                          color: black,
                          fontSize: 24,
                          fontWeight: FontWeight.w500),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          '\$ ',
                          style: TextStyle(
                              color: primaryGreen,
                              fontSize: 24,
                              fontWeight: FontWeight.w400),
                        ),
                        Countup(
                          begin: 0,
                          end: 1460,
                          duration: const Duration(seconds: 4),
                          separator: ',',
                          style: const TextStyle(
                              color: primaryGreen,
                              fontSize: 24,
                              fontWeight: FontWeight.w400),
                        ),
                        const Text(
                          ' USD',
                          style: TextStyle(
                              color: primaryGreen,
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Text(
                      'This amount is estimated this will vary \nif you change the location or weight',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          color: black.withOpacity(.5),
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Animate(
                      effects: const [
                        MoveEffect(
                          begin: Offset(0, 100),
                          end: Offset(0, 0),
                          delay: Duration(milliseconds: 300),
                          duration: Duration(milliseconds: 700),
                        ),
                        FadeEffect(
                          begin: 0,
                          delay: Duration(milliseconds: 300),
                          duration: Duration(
                            milliseconds: 300,
                          ),
                        )
                      ],
                      child: SizedBox(
                        height: 64,
                        child: InkWell(
                          highlightColor: white,
                          splashColor: Colors.transparent,
                          onTap: () {
                            setState(() {
                              _select = !_select;
                            });
                            Navigator.of(context).push(_createRoute());
                          },
                          child: _select
                              ? Animate(
                                  effects: const [
                                    MoveEffect(
                                      begin: Offset(4, 1),
                                      end: Offset(0, 0),
                                    )
                                  ],
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 5),
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        color: primaryOrange,
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: const Center(
                                      child: Text(
                                        'Calculate',
                                        style: TextStyle(
                                            color: white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                )
                              : Animate(
                                  effects: const [
                                    MoveEffect(
                                        begin: Offset(4, 1),
                                        end: Offset(0, 0),
                                        delay: Duration(milliseconds: 1))
                                  ],
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 4),
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        color: primaryOrange,
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: const Center(
                                      child: Text(
                                        'Back to home',
                                        style: TextStyle(
                                            color: white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                ),
                        ),
                      ),
                    ),
                  ],
                ),
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
}
