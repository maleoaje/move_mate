import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:line_icons/line_icons.dart';
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
      backgroundColor: primarygrey,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SizedBox(
            //     height: MediaQuery.of(context).size.height,
            //     child: buildTab(context)),
            Animate(
              effects: const [
                MoveEffect(
                    begin: Offset(0, 0),
                    end: Offset(0, -30),
                    duration: Duration(milliseconds: 500)),
              ],
              child: Container(
                padding: const EdgeInsets.only(left: 0, top: 70, bottom: 10),
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(color: primaryColor),
                child: Animate(
                  effects: const [
                    MoveEffect(
                        begin: Offset(0, -10),
                        end: Offset(0, 20),
                        duration: Duration(milliseconds: 600)),
                  ],
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Animate(
                            effects: const [
                              MoveEffect(
                                  begin: Offset(-30, 0),
                                  end: Offset(10, 0),
                                  duration: Duration(milliseconds: 500)),
                            ],
                            child: const Icon(
                              Icons.arrow_back_ios_rounded,
                              color: white,
                            ),
                          ),
                          const SizedBox(
                            width: 120,
                          ),
                          Animate(
                            effects: const [
                              MoveEffect(
                                  begin: Offset(0, 15),
                                  end: Offset(0, 2),
                                  duration: Duration(milliseconds: 700)),
                            ],
                            child: const Text(
                              'Shipment history',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 41,
                        child: Animate(
                          effects: const [
                            MoveEffect(
                                begin: Offset(60, -20),
                                end: Offset(0, 0),
                                duration: Duration(milliseconds: 600)),
                            FadeEffect(
                              begin: .06,
                              duration: Duration(
                                milliseconds: 600,
                              ),
                            )
                          ],
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
                                              Animate(
                                                effects: const [
                                                  MoveEffect(
                                                    begin: Offset(2, 1),
                                                    end: Offset(0, 0),
                                                  )
                                                ],
                                                child: const Text(
                                                  'All ',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: white),
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
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          6, 2, 6, 2),
                                                  decoration: BoxDecoration(
                                                      color: primaryOrange,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              9)),
                                                  child: const Text(
                                                    '12',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: white),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Animate(
                                            effects: const [
                                              SlideEffect(
                                                  begin: Offset(-1, 0),
                                                  duration: Duration(
                                                      milliseconds: 400))
                                            ],
                                            child: Container(
                                              width: 55,
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      6, 1, 6, 2),
                                              decoration: const BoxDecoration(
                                                color: primaryOrange,
                                              ),
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
                                                    const EdgeInsets.fromLTRB(
                                                        6, 2, 6, 2),
                                                decoration: BoxDecoration(
                                                    color:
                                                        white.withOpacity(.2),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            9)),
                                                child: const Text(
                                                  '12',
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500,
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
                                            padding: const EdgeInsets.fromLTRB(
                                                6, 1, 6, 2),
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
                                          Animate(
                                            effects: const [
                                              MoveEffect(
                                                begin: Offset(2, 1),
                                                end: Offset(0, 0),
                                              )
                                            ],
                                            child: Row(
                                              children: [
                                                const Text(
                                                  'Completed ',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: white),
                                                ),
                                                Container(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          6, 2, 6, 2),
                                                  decoration: BoxDecoration(
                                                      color: primaryOrange,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              9)),
                                                  child: const Text(
                                                    '5',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: white),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Animate(
                                            effects: const [
                                              SlideEffect(
                                                  begin: Offset(-1, 0),
                                                  duration: Duration(
                                                      milliseconds: 400))
                                            ],
                                            child: Container(
                                              width: 120,
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      6, 1, 6, 2),
                                              decoration: const BoxDecoration(
                                                color: primaryOrange,
                                              ),
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
                                                    const EdgeInsets.fromLTRB(
                                                        6, 2, 6, 2),
                                                decoration: BoxDecoration(
                                                    color:
                                                        white.withOpacity(.2),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            9)),
                                                child: const Text(
                                                  '5',
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500,
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
                                            padding: const EdgeInsets.fromLTRB(
                                                6, 1, 6, 2),
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
                                          Animate(
                                            effects: const [
                                              MoveEffect(
                                                begin: Offset(2, 1),
                                                end: Offset(0, 0),
                                              )
                                            ],
                                            child: Row(
                                              children: [
                                                const Text(
                                                  'In progress ',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: white),
                                                ),
                                                Container(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          6, 2, 6, 2),
                                                  decoration: BoxDecoration(
                                                      color: primaryOrange,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              9)),
                                                  child: const Text(
                                                    '3',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: white),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Animate(
                                            effects: const [
                                              SlideEffect(
                                                  begin: Offset(-1, 0),
                                                  duration: Duration(
                                                      milliseconds: 400))
                                            ],
                                            child: Container(
                                              width: 120,
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      6, 1, 6, 2),
                                              decoration: const BoxDecoration(
                                                color: primaryOrange,
                                              ),
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
                                                    const EdgeInsets.fromLTRB(
                                                        6, 2, 6, 2),
                                                decoration: BoxDecoration(
                                                    color:
                                                        white.withOpacity(.2),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            9)),
                                                child: const Text(
                                                  '3',
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500,
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
                                            padding: const EdgeInsets.fromLTRB(
                                                6, 1, 6, 2),
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
                                          Animate(
                                            effects: const [
                                              MoveEffect(
                                                begin: Offset(2, 1),
                                                end: Offset(0, 0),
                                              )
                                            ],
                                            child: Row(
                                              children: [
                                                const Text(
                                                  'Pending order ',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: white),
                                                ),
                                                Container(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          6, 2, 6, 2),
                                                  decoration: BoxDecoration(
                                                      color: primaryOrange,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              9)),
                                                  child: const Text(
                                                    '3',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: white),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Animate(
                                            effects: const [
                                              SlideEffect(
                                                  begin: Offset(-1, 0),
                                                  duration: Duration(
                                                      milliseconds: 400))
                                            ],
                                            child: Container(
                                              width: 140,
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      6, 1, 6, 2),
                                              decoration: const BoxDecoration(
                                                color: primaryOrange,
                                              ),
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
                                                    const EdgeInsets.fromLTRB(
                                                        6, 2, 6, 2),
                                                decoration: BoxDecoration(
                                                    color:
                                                        white.withOpacity(.2),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            9)),
                                                child: const Text(
                                                  '3',
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500,
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
                                            padding: const EdgeInsets.fromLTRB(
                                                6, 1, 6, 2),
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
                                          Animate(
                                            effects: const [
                                              MoveEffect(
                                                begin: Offset(2, 1),
                                                end: Offset(0, 0),
                                              )
                                            ],
                                            child: const Row(
                                              children: [
                                                Text(
                                                  'Canceled ',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: white),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Animate(
                                            effects: const [
                                              SlideEffect(
                                                  begin: Offset(-1, 0),
                                                  duration: Duration(
                                                      milliseconds: 400))
                                            ],
                                            child: Container(
                                              width: 80,
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      6, 1, 6, 2),
                                              decoration: const BoxDecoration(
                                                color: primaryOrange,
                                              ),
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
                                            padding: const EdgeInsets.fromLTRB(
                                                6, 1, 6, 2),
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
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Animate(
                    effects: const [
                      MoveEffect(
                          begin: Offset(0, 200),
                          end: Offset(0, -60),
                          duration: Duration(milliseconds: 690),
                          delay: Duration(milliseconds: 200)),
                      FadeEffect(
                        begin: .1,
                        duration: Duration(
                          milliseconds: 600,
                        ),
                      )
                    ],
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * .75,
                      child: ListView(
                        children: [
                          Animate(
                            effects: const [
                              MoveEffect(
                                begin: Offset(0, 100),
                                end: Offset(0, -20),
                                duration: Duration(milliseconds: 590),
                              ),
                              FadeEffect(
                                begin: .1,
                                duration: Duration(
                                  milliseconds: 600,
                                ),
                              )
                            ],
                            child: const Text(
                              'Shipments',
                              style: TextStyle(
                                  color: black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          _select == 0
                              ? Animate(
                                  effects: const [
                                    MoveEffect(
                                      begin: Offset(0, 100),
                                      end: Offset(0, -10),
                                      duration: Duration(milliseconds: 590),
                                      delay: Duration(milliseconds: 300),
                                    ),
                                    FadeEffect(
                                      begin: .1,
                                      duration: Duration(
                                        milliseconds: 600,
                                      ),
                                    )
                                  ],
                                  child: Column(
                                    children: [
                                      shipHistoryCard(
                                          FontAwesomeIcons.refresh,
                                          primaryGreen,
                                          'in-progress',
                                          'Arriving today!',
                                          'Your delivery, #NE324563985891 from Atlanta, is arriving today',
                                          '1400 USD',
                                          'Sep 20, 2023'),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      shipHistoryCard(
                                          Icons.restore,
                                          primaryOrange,
                                          'pending',
                                          'Arriving today!',
                                          'Your delivery, #NE324563985891 from Atlanta, is arriving today',
                                          '1400 USD',
                                          'Sep 20, 2023'),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      shipHistoryCard(
                                          Icons.restore,
                                          primaryOrange,
                                          'pending',
                                          'Arriving today!',
                                          'Your delivery, #NE324563985891 from Atlanta, is arriving today',
                                          '1400 USD',
                                          'Sep 20, 2023'),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      shipHistoryCard(
                                          LineIcons.clock,
                                          primaryBlue,
                                          'loading',
                                          'Arriving today!',
                                          'Your delivery, #NE324563985891 from Atlanta, is arriving today',
                                          '1400 USD',
                                          'Sep 20, 2023'),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      shipHistoryCard(
                                          LineIcons.clock,
                                          primaryBlue,
                                          'loading',
                                          'Arriving today!',
                                          'Your delivery, #NE324563985891 from Atlanta, is arriving today',
                                          '1400 USD',
                                          'Sep 20, 2023'),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      shipHistoryCard(
                                          Icons.restore,
                                          primaryOrange,
                                          'pending',
                                          'Arriving today!',
                                          'Your delivery, #NE324563985891 from Atlanta, is arriving today',
                                          '1400 USD',
                                          'Sep 20, 2023'),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      shipHistoryCard(
                                          LineIcons.clock,
                                          primaryBlue,
                                          'loading',
                                          'Arriving today!',
                                          'Your delivery, #NE324563985891 from Atlanta, is arriving today',
                                          '1400 USD',
                                          'Sep 20, 2023'),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      shipHistoryCard(
                                          Icons.restore,
                                          primaryOrange,
                                          'pending',
                                          'Arriving today!',
                                          'Your delivery, #NE324563985891 from Atlanta, is arriving today',
                                          '1400 USD',
                                          'Sep 20, 2023'),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      shipHistoryCard(
                                          FontAwesomeIcons.refresh,
                                          primaryGreen,
                                          'in-progress',
                                          'Arriving today!',
                                          'Your delivery, #NE324563985891 from Atlanta, is arriving today',
                                          '1400 USD',
                                          'Sep 20, 2023'),
                                      const SizedBox(
                                        height: 50,
                                      ),
                                      shipHistoryCard(
                                          FontAwesomeIcons.refresh,
                                          primaryGreen,
                                          'in-progress',
                                          'Arriving today!',
                                          'Your delivery, #NE324563985891 from Atlanta, is arriving today',
                                          '1400 USD',
                                          'Sep 20, 2023'),
                                      const SizedBox(
                                        height: 50,
                                      ),
                                    ],
                                  ),
                                )
                              : _select == 1
                                  ? Animate(
                                      effects: const [
                                        MoveEffect(
                                          begin: Offset(0, 100),
                                          delay: Duration(milliseconds: 200),
                                          end: Offset(0, -10),
                                          duration: Duration(milliseconds: 590),
                                        ),
                                        FadeEffect(
                                          begin: .1,
                                          duration: Duration(
                                            milliseconds: 600,
                                          ),
                                        )
                                      ],
                                      child: Column(
                                        children: [
                                          shipHistoryCard(
                                              Icons.check_circle_outline,
                                              primaryColor,
                                              'Completed',
                                              'Arriving today!',
                                              'Your delivery, #NE324563985891 from Atlanta, is arriving today',
                                              '1400 USD',
                                              'Sep 20, 2023'),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          shipHistoryCard(
                                              Icons.check_circle_outline,
                                              primaryColor,
                                              'Completed',
                                              'Arriving today!',
                                              'Your delivery, #NE324563985891 from Atlanta, is arriving today',
                                              '1400 USD',
                                              'Sep 20, 2023'),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          shipHistoryCard(
                                              Icons.check_circle_outline,
                                              primaryColor,
                                              'Completed',
                                              'Arriving today!',
                                              'Your delivery, #NE324563985891 from Atlanta, is arriving today',
                                              '1400 USD',
                                              'Sep 20, 2023'),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          shipHistoryCard(
                                              Icons.check_circle_outline,
                                              primaryColor,
                                              'Completed',
                                              'Arriving today!',
                                              'Your delivery, #NE324563985891 from Atlanta, is arriving today',
                                              '1400 USD',
                                              'Sep 20, 2023'),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                        ],
                                      ),
                                    )
                                  : _select == 2
                                      ? Animate(
                                          effects: const [
                                            MoveEffect(
                                              begin: Offset(0, 100),
                                              delay:
                                                  Duration(milliseconds: 210),
                                              end: Offset(0, -10),
                                              duration:
                                                  Duration(milliseconds: 590),
                                            ),
                                            FadeEffect(
                                              begin: .1,
                                              duration: Duration(
                                                milliseconds: 600,
                                              ),
                                            )
                                          ],
                                          child: Column(
                                            children: [
                                              shipHistoryCard(
                                                  FontAwesomeIcons.refresh,
                                                  primaryGreen,
                                                  'in-progress',
                                                  'Arriving today!',
                                                  'Your delivery, #NE324563985891 from Atlanta, is arriving today',
                                                  '1400 USD',
                                                  'Sep 20, 2023'),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              shipHistoryCard(
                                                  FontAwesomeIcons.refresh,
                                                  primaryGreen,
                                                  'in-progress',
                                                  'Arriving today!',
                                                  'Your delivery, #NE324563985891 from Atlanta, is arriving today',
                                                  '1400 USD',
                                                  'Sep 20, 2023'),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              shipHistoryCard(
                                                  FontAwesomeIcons.refresh,
                                                  primaryGreen,
                                                  'in-progress',
                                                  'Arriving today!',
                                                  'Your delivery, #NE324563985891 from Atlanta, is arriving today',
                                                  '1400 USD',
                                                  'Sep 20, 2023'),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                            ],
                                          ),
                                        )
                                      : _select == 3
                                          ? Animate(
                                              effects: const [
                                                MoveEffect(
                                                  begin: Offset(0, 100),
                                                  delay: Duration(
                                                      milliseconds: 290),
                                                  end: Offset(0, -10),
                                                  duration: Duration(
                                                      milliseconds: 590),
                                                ),
                                                FadeEffect(
                                                  begin: .1,
                                                  duration: Duration(
                                                    milliseconds: 600,
                                                  ),
                                                )
                                              ],
                                              child: Column(
                                                children: [
                                                  shipHistoryCard(
                                                      Icons.restore,
                                                      primaryOrange,
                                                      'pending',
                                                      'Arriving today!',
                                                      'Your delivery, #NE324563985891 from Atlanta, is arriving today',
                                                      '1400 USD',
                                                      'Sep 20, 2023'),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  shipHistoryCard(
                                                      Icons.restore,
                                                      primaryOrange,
                                                      'pending',
                                                      'Arriving today!',
                                                      'Your delivery, #NE324563985891 from Atlanta, is arriving today',
                                                      '1400 USD',
                                                      'Sep 20, 2023'),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  shipHistoryCard(
                                                      Icons.restore,
                                                      primaryOrange,
                                                      'pending',
                                                      'Arriving today!',
                                                      'Your delivery, #NE324563985891 from Atlanta, is arriving today',
                                                      '1400 USD',
                                                      'Sep 20, 2023'),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                ],
                                              ),
                                            )
                                          : Container()
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget shipHistoryCard(
    icon,
    iconColor,
    status,
    title,
    desc,
    price,
    date,
  ) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: MediaQuery.of(context).size.width,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: primarygrey),
                child: Row(
                  children: [
                    Icon(
                      icon,
                      color: iconColor,
                      size: 17,
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(
                      status,
                      style: TextStyle(
                          fontSize: 14,
                          color: iconColor,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                title,
                style: const TextStyle(
                    color: black, fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 6,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: Text(
                  desc,
                  style: const TextStyle(
                      color: primarygreyDark,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    price,
                    style: const TextStyle(
                        color: primaryColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  const Text(
                    '  •  ',
                    style: TextStyle(
                        color: primarygreyDark,
                        fontSize: 14,
                        fontWeight: FontWeight.w900),
                  ),
                  Text(
                    date,
                    style: const TextStyle(
                        color: Colors.black87,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ],
          ),
          Image.asset(
            'assets/images/box.png',
            width: 60,
          ),
        ],
      ),
    );
  }
}
