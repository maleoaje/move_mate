import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:move_mate/constants/constants.dart';

class ShipmentPage extends StatefulWidget {
  const ShipmentPage({super.key});

  @override
  State<ShipmentPage> createState() => _ShipmentPageState();
}

class _ShipmentPageState extends State<ShipmentPage> {
  int _select = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        title: Animate(
          effects: const [
            MoveEffect(
                begin: Offset(0, 15),
                end: Offset(0, 0),
                duration: Duration(milliseconds: 500)),
            FadeEffect(
              begin: .06,
              duration: Duration(
                milliseconds: 600,
              ),
            )
          ],
          child: const Text(
            'Shipment history',
            style: TextStyle(
                fontSize: 16, color: white, fontWeight: FontWeight.w500),
          ),
        ),
        leading: Animate(
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            // SizedBox(
            //     height: MediaQuery.of(context).size.height,
            //     child: buildTab(context)),
            Container(
              height: 41,
              padding: const EdgeInsets.only(left: 0, top: 10),
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(color: primaryColor),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _select = 0;
                      });
                    },
                    child: _select == 0
                        ? Column(
                            children: [
                              Row(
                                children: [
                                  const Text(
                                    'All ',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: white),
                                  ),
                                  Container(
                                    padding:
                                        const EdgeInsets.fromLTRB(6, 2, 6, 2),
                                    decoration: BoxDecoration(
                                        color: primaryOrange,
                                        borderRadius: BorderRadius.circular(9)),
                                    child: const Text(
                                      '12',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: white),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Container(
                                width: 55,
                                padding: const EdgeInsets.fromLTRB(6, 1, 6, 2),
                                decoration: const BoxDecoration(
                                  color: primaryOrange,
                                ),
                              )
                            ],
                          )
                        : Column(
                            children: [
                              Row(
                                children: [
                                  const Text(
                                    'All ',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: primarygreyDark),
                                  ),
                                  Container(
                                    padding:
                                        const EdgeInsets.fromLTRB(6, 2, 6, 2),
                                    decoration: BoxDecoration(
                                        color: white.withOpacity(.2),
                                        borderRadius: BorderRadius.circular(9)),
                                    child: const Text(
                                      '12',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: primarygreyDark),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Container(
                                width: 55,
                                padding: const EdgeInsets.fromLTRB(6, 1, 6, 2),
                                decoration: const BoxDecoration(
                                  color: primaryColor,
                                ),
                              )
                            ],
                          ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _select = 1;
                      });
                    },
                    child: _select == 1
                        ? Column(
                            children: [
                              Row(
                                children: [
                                  const Text(
                                    'Completed ',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: white),
                                  ),
                                  Container(
                                    padding:
                                        const EdgeInsets.fromLTRB(6, 2, 6, 2),
                                    decoration: BoxDecoration(
                                        color: primaryOrange,
                                        borderRadius: BorderRadius.circular(9)),
                                    child: const Text(
                                      '5',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: white),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Container(
                                width: 120,
                                padding: const EdgeInsets.fromLTRB(6, 1, 6, 2),
                                decoration: const BoxDecoration(
                                  color: primaryOrange,
                                ),
                              )
                            ],
                          )
                        : Column(
                            children: [
                              Row(
                                children: [
                                  const Text(
                                    'Completed ',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: primarygreyDark),
                                  ),
                                  Container(
                                    padding:
                                        const EdgeInsets.fromLTRB(6, 2, 6, 2),
                                    decoration: BoxDecoration(
                                        color: white.withOpacity(.2),
                                        borderRadius: BorderRadius.circular(9)),
                                    child: const Text(
                                      '5',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: primarygreyDark),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Container(
                                width: 120,
                                padding: const EdgeInsets.fromLTRB(6, 1, 6, 2),
                                decoration: const BoxDecoration(
                                  color: primaryColor,
                                ),
                              )
                            ],
                          ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _select = 2;
                      });
                    },
                    child: _select == 2
                        ? Column(
                            children: [
                              Row(
                                children: [
                                  const Text(
                                    'In progress ',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: white),
                                  ),
                                  Container(
                                    padding:
                                        const EdgeInsets.fromLTRB(6, 2, 6, 2),
                                    decoration: BoxDecoration(
                                        color: primaryOrange,
                                        borderRadius: BorderRadius.circular(9)),
                                    child: const Text(
                                      '3',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: white),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Container(
                                width: 120,
                                padding: const EdgeInsets.fromLTRB(6, 1, 6, 2),
                                decoration: const BoxDecoration(
                                  color: primaryOrange,
                                ),
                              )
                            ],
                          )
                        : Column(
                            children: [
                              Row(
                                children: [
                                  const Text(
                                    'In progress ',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: primarygreyDark),
                                  ),
                                  Container(
                                    padding:
                                        const EdgeInsets.fromLTRB(6, 2, 6, 2),
                                    decoration: BoxDecoration(
                                        color: white.withOpacity(.2),
                                        borderRadius: BorderRadius.circular(9)),
                                    child: const Text(
                                      '3',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: primarygreyDark),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Container(
                                width: 120,
                                padding: const EdgeInsets.fromLTRB(6, 1, 6, 2),
                                decoration: const BoxDecoration(
                                  color: primaryColor,
                                ),
                              )
                            ],
                          ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _select = 3;
                      });
                    },
                    child: _select == 3
                        ? Column(
                            children: [
                              Row(
                                children: [
                                  const Text(
                                    'Pending order ',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: white),
                                  ),
                                  Container(
                                    padding:
                                        const EdgeInsets.fromLTRB(6, 2, 6, 2),
                                    decoration: BoxDecoration(
                                        color: primaryOrange,
                                        borderRadius: BorderRadius.circular(9)),
                                    child: const Text(
                                      '3',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: white),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Container(
                                width: 140,
                                padding: const EdgeInsets.fromLTRB(6, 1, 6, 2),
                                decoration: const BoxDecoration(
                                  color: primaryOrange,
                                ),
                              )
                            ],
                          )
                        : Column(
                            children: [
                              Row(
                                children: [
                                  const Text(
                                    'Pending order ',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: primarygreyDark),
                                  ),
                                  Container(
                                    padding:
                                        const EdgeInsets.fromLTRB(6, 2, 6, 2),
                                    decoration: BoxDecoration(
                                        color: white.withOpacity(.2),
                                        borderRadius: BorderRadius.circular(9)),
                                    child: const Text(
                                      '3',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: primarygreyDark),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Container(
                                width: 140,
                                padding: const EdgeInsets.fromLTRB(6, 1, 6, 2),
                                decoration: const BoxDecoration(
                                  color: primaryColor,
                                ),
                              )
                            ],
                          ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _select = 4;
                      });
                    },
                    child: _select == 4
                        ? Column(
                            children: [
                              const Row(
                                children: [
                                  Text(
                                    'Canceled ',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: white),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Container(
                                width: 80,
                                padding: const EdgeInsets.fromLTRB(6, 1, 6, 2),
                                decoration: const BoxDecoration(
                                  color: primaryOrange,
                                ),
                              )
                            ],
                          )
                        : Column(
                            children: [
                              const Row(
                                children: [
                                  Text(
                                    'Canceled ',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: primarygreyDark),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Container(
                                width: 80,
                                padding: const EdgeInsets.fromLTRB(6, 1, 6, 2),
                                decoration: const BoxDecoration(
                                  color: primaryColor,
                                ),
                              )
                            ],
                          ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildTab(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: Column(
          children: <Widget>[
            // the tab bar with two items
            SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: AppBar(
                elevation: 0,
                backgroundColor: primaryColor,
                bottom: TabBar(
                  overlayColor: MaterialStateProperty.all(primaryColor),
                  indicatorPadding: const EdgeInsets.all(1),
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelStyle: const TextStyle(
                      fontSize: 12, fontWeight: FontWeight.w600),
                  labelColor: white,
                  unselectedLabelColor: primarygreyDark,
                  indicatorColor: primaryOrange,
                  tabs: [
                    Tab(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'All ',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w600),
                          ),
                          Container(
                            padding: const EdgeInsets.fromLTRB(6, 2, 6, 2),
                            decoration: BoxDecoration(
                                color: primaryOrange,
                                borderRadius: BorderRadius.circular(9)),
                            child: const Text(
                              '12',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w600),
                            ),
                          )
                        ],
                      ),
                    ),
                    const Tab(
                      text: 'Completed',
                    ),
                    const Tab(
                      text: 'In progress',
                    ),
                    const Tab(text: 'Pending order'),
                    const Tab(text: 'Cancelled'),
                  ],
                ),
              ),
            ),
            const Divider(
              color: primarygrey,
              height: 4,
              thickness: 0.1,
            ),

            // create widgets for each tab bar here
            const Expanded(
              child: TabBarView(
                children: [
                  // menu tab bar view widget
                  Text('1'),

                  // activities tab bar viiew widget

                  Text('2'),
                  // third tab bar viiew widget
                  Text('3')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
