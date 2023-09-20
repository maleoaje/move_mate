import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:move_mate/constants/constants.dart';
import 'package:move_mate/screens/calculate.dart';
import 'package:move_mate/screens/home_screen.dart';
import 'package:move_mate/screens/profile.dart';
import 'package:move_mate/screens/shipment.dart';

// ignore: must_be_immutable
class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Animate(
            effects: const [
              MoveEffect(
                  begin: Offset(0, 300),
                  end: Offset(0, 0),
                  duration: Duration(milliseconds: 500),
                  delay: Duration(milliseconds: 70)),
            ],
            child: BottomAppBar(
              elevation: 20,
              color: white,
              shape: const CircularNotchedRectangle(),
              notchMargin: 3,
              child: SizedBox(
                height: 70,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        highlightColor: white,
                        splashColor: Colors.transparent,
                        onTap: () {
                          setState(() {
                            _currentPage = 0;
                          });
                        },
                        child: _currentPage == 0
                            ? Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Animate(
                                    effects: const [
                                      SlideEffect(
                                          begin: Offset(-1, 0),
                                          duration: Duration(milliseconds: 200))
                                    ],
                                    child: Container(
                                      height: 2,
                                      width: 90,
                                      color: primaryColor,
                                    ),
                                  ),
                                  Animate(
                                    effects: const [
                                      MoveEffect(
                                        begin: Offset(2, 1),
                                        end: Offset(0, 0),
                                      )
                                    ],
                                    child: Container(
                                      width: 50,
                                      padding: const EdgeInsets.all(8),
                                      child: const Center(
                                        child: Icon(
                                          Icons.home_filled,
                                          size: 30,
                                          color: primaryColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Text(
                                    'Home',
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w500,
                                        color: primaryColor),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              )
                            : Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 2,
                                    width: 90,
                                    color: white,
                                  ),
                                  Container(
                                    width: 50,
                                    padding: const EdgeInsets.all(8),
                                    child: const Center(
                                      child: Icon(
                                        Icons.home_filled,
                                        size: 30,
                                        color: primarygreyDark,
                                      ),
                                    ),
                                  ),
                                  const Text(
                                    'Home',
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w500,
                                        color: primarygreyDark),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                      ),
                      InkWell(
                        highlightColor: white,
                        splashColor: white,
                        onTap: () {
                          setState(() {
                            _currentPage = 1;
                          });
                        },
                        child: _currentPage == 1
                            ? Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Animate(
                                    effects: const [
                                      SlideEffect(
                                          begin: Offset(-1, 0),
                                          duration: Duration(milliseconds: 200))
                                    ],
                                    child: Container(
                                      height: 2,
                                      width: 90,
                                      color: primaryColor,
                                    ),
                                  ),
                                  Animate(
                                    effects: const [
                                      MoveEffect(
                                        begin: Offset(2, 1),
                                        end: Offset(0, 0),
                                      )
                                    ],
                                    child: Container(
                                      width: 60,
                                      padding: const EdgeInsets.all(8),
                                      child: const Center(
                                        child: Icon(
                                          Icons.calculate_outlined,
                                          size: 30,
                                          color: primaryColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Text(
                                    // AppLocalizations.of(context)!.activities,
                                    'Calculate',
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w500,
                                        color: primaryColor),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              )
                            : Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 2,
                                    width: 90,
                                    color: white,
                                  ),
                                  Container(
                                    width: 60,
                                    padding: const EdgeInsets.all(8),
                                    child: const Center(
                                      child: Icon(
                                        Icons.calculate_outlined,
                                        size: 30,
                                        color: primarygreyDark,
                                      ),
                                    ),
                                  ),
                                  const Text(
                                    // AppLocalizations.of(context)!.activities,
                                    'Calculate',
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w500,
                                        color: primarygreyDark),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                      ),
                      InkWell(
                        highlightColor: white,
                        splashColor: white,
                        onTap: () {
                          setState(() {
                            _currentPage = 2;
                          });
                        },
                        child: _currentPage == 2
                            ? Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Animate(
                                    effects: const [
                                      SlideEffect(
                                          begin: Offset(-1, 0),
                                          duration: Duration(milliseconds: 200))
                                    ],
                                    child: Container(
                                      height: 2,
                                      width: 90,
                                      color: primaryColor,
                                    ),
                                  ),
                                  Animate(
                                    effects: const [
                                      MoveEffect(
                                        begin: Offset(2, 1),
                                        end: Offset(0, 0),
                                      )
                                    ],
                                    child: Container(
                                      width: 60,
                                      padding: const EdgeInsets.all(8),
                                      child: const Center(
                                        child: Icon(
                                          Icons.restore,
                                          size: 30,
                                          color: primaryColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Text(
                                    'Shipment',
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w500,
                                        color: primaryColor),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              )
                            : Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 2,
                                    width: 90,
                                    color: white,
                                  ),
                                  Container(
                                    width: 60,
                                    padding: const EdgeInsets.all(8),
                                    child: const Center(
                                      child: Icon(
                                        Icons.restore,
                                        size: 30,
                                        color: primarygreyDark,
                                      ),
                                    ),
                                  ),
                                  const Text(
                                    // AppLocalizations.of(context)!.accounts,
                                    'Shipment',
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w500,
                                        color: primarygreyDark),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                      ),
                      InkWell(
                        highlightColor: white,
                        splashColor: white,
                        onTap: () {
                          setState(() {
                            _currentPage = 3;
                          });
                        },
                        child: _currentPage == 3
                            ? Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Animate(
                                    effects: const [
                                      SlideEffect(
                                          begin: Offset(-1, 0),
                                          duration: Duration(milliseconds: 200))
                                    ],
                                    child: Container(
                                      height: 2,
                                      width: 90,
                                      color: primaryColor,
                                    ),
                                  ),
                                  Animate(
                                    effects: const [
                                      MoveEffect(
                                        begin: Offset(2, 1),
                                        end: Offset(0, 0),
                                      )
                                    ],
                                    child: Container(
                                      width: 60,
                                      padding: const EdgeInsets.all(8),
                                      child: const Center(
                                        child: Icon(
                                          Icons.person_outlined,
                                          size: 30,
                                          color: primaryColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Text(
                                    // AppLocalizations.of(context)!.accounts,
                                    'Profile',
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w500,
                                        color: primaryColor),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              )
                            : Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 2,
                                    width: 90,
                                    color: white,
                                  ),
                                  Container(
                                    width: 60,
                                    padding: const EdgeInsets.all(8),
                                    child: const Center(
                                      child: Icon(
                                        Icons.person_outlined,
                                        size: 30,
                                        color: primarygreyDark,
                                      ),
                                    ),
                                  ),
                                  const Text(
                                    // AppLocalizations.of(context)!.accounts,
                                    'Profile',
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w500,
                                        color: primarygreyDark),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: _currentPage == 0
          ? const HomePage()
          : _currentPage == 1
              ? const CalculatePage()
              : _currentPage == 2
                  ? const ShipmentPage()
                  : _currentPage == 3
                      ? const ProfilePage()
                      : Container(),
    );
  }
}
