import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:move_mate/constants/constants.dart';

class CalculatePage extends StatefulWidget {
  const CalculatePage({super.key});

  @override
  State<CalculatePage> createState() => _CalculatePageState();
}

class _CalculatePageState extends State<CalculatePage> {
  final int _select = 0;
  final TextEditingController _senderLoc = TextEditingController();
  final TextEditingController _weight = TextEditingController();
  final TextEditingController _receiverLoc = TextEditingController();
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
                    begin: Offset(0, 0),
                    end: Offset(0, -100),
                    duration: Duration(milliseconds: 500)),
              ],
              child: Container(
                padding: const EdgeInsets.only(left: 0, top: 150, bottom: 16),
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
                            width: 140,
                          ),
                          Animate(
                            effects: const [
                              MoveEffect(
                                  begin: Offset(0, 15),
                                  end: Offset(0, 0),
                                  duration: Duration(milliseconds: 700)),
                            ],
                            child: const Text(
                              'Calculate',
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
                    ],
                  ),
                ),
              ),
            ),
            Animate(
              effects: const [
                MoveEffect(
                  begin: Offset(0, 0),
                  end: Offset(20, -80),
                  duration: Duration(milliseconds: 0),
                ),
                FadeEffect(
                  begin: 0,
                  delay: Duration(milliseconds: 300),
                  duration: Duration(
                    milliseconds: 600,
                  ),
                )
              ],
              child: const Text(
                'Destination',
                style: TextStyle(
                    color: black, fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
            Animate(
              effects: const [
                MoveEffect(
                    begin: Offset(0, 50),
                    end: Offset(0, -80),
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
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: white,
                        boxShadow: [
                          BoxShadow(
                            color: primaryColor.withOpacity(.01),
                            blurStyle: BlurStyle.normal,
                            spreadRadius: 4,
                            blurRadius: 5,
                            offset: const Offset(0, 0),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Animate(
                            effects: const [
                              MoveEffect(
                                  begin: Offset(0, 10),
                                  end: Offset(0, 0),
                                  duration: Duration(milliseconds: 500),
                                  delay: Duration(milliseconds: 100)),
                            ],
                            child: Container(
                              height: 50,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: primarygreyDark.withOpacity(.1),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(children: [
                                Image.asset(
                                  'assets/images/sendbox.png',
                                  color: black.withOpacity(.7),
                                  width: 25,
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                const VerticalDivider(
                                  color: primarygreyDark,
                                ),
                                SizedBox(
                                  height: 50,
                                  width: MediaQuery.of(context).size.width * .6,
                                  child: TextFormField(
                                    autofocus: false,
                                    textCapitalization:
                                        TextCapitalization.sentences,
                                    textInputAction: TextInputAction.next,
                                    cursorColor: primaryColor,
                                    textAlign: TextAlign.start,
                                    keyboardType: TextInputType.name,
                                    controller: _senderLoc,
                                    style: const TextStyle(),
                                    decoration: InputDecoration(
                                      contentPadding: const EdgeInsets.fromLTRB(
                                          10, 10, 10, 10),
                                      hintText: 'Sender location',
                                      hintStyle: TextStyle(
                                          color: black.withOpacity(.6),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                      border: InputBorder.none,
                                      filled: false,
                                      focusColor: white,
                                      hoverColor: white,
                                      focusedBorder: const OutlineInputBorder(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(5),
                                            topRight: Radius.circular(5),
                                            bottomLeft: Radius.circular(5),
                                            bottomRight: Radius.circular(5),
                                          ),
                                          borderSide: BorderSide(
                                              color: white, width: 0)),
                                      enabledBorder: const OutlineInputBorder(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(5),
                                            topRight: Radius.circular(5),
                                            bottomLeft: Radius.circular(5),
                                            bottomRight: Radius.circular(5),
                                          ),
                                          borderSide: BorderSide(
                                              color: white, width: 0)),
                                      errorBorder: const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(4)),
                                          borderSide: BorderSide(
                                            width: 1,
                                            color: Colors.red,
                                          )),
                                      focusedErrorBorder:
                                          const OutlineInputBorder(
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
                              ]),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Animate(
                            effects: const [
                              MoveEffect(
                                  begin: Offset(0, 10),
                                  end: Offset(0, 0),
                                  duration: Duration(milliseconds: 500),
                                  delay: Duration(milliseconds: 200)),
                            ],
                            child: Container(
                              height: 50,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: primarygreyDark.withOpacity(.1),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(children: [
                                Image.asset(
                                  'assets/images/receivebox.png',
                                  width: 25,
                                  color: black.withOpacity(.7),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                const VerticalDivider(
                                  color: primarygreyDark,
                                ),
                                SizedBox(
                                  height: 50,
                                  width: MediaQuery.of(context).size.width * .6,
                                  child: TextFormField(
                                    autofocus: false,
                                    textCapitalization:
                                        TextCapitalization.sentences,
                                    textInputAction: TextInputAction.next,
                                    cursorColor: primaryColor,
                                    textAlign: TextAlign.start,
                                    keyboardType: TextInputType.name,
                                    controller: _senderLoc,
                                    style: const TextStyle(),
                                    decoration: InputDecoration(
                                      contentPadding: const EdgeInsets.fromLTRB(
                                          10, 10, 10, 10),
                                      hintText: 'Receiver location',
                                      hintStyle: TextStyle(
                                          color: black.withOpacity(.6),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                      border: InputBorder.none,
                                      filled: false,
                                      focusColor: white,
                                      hoverColor: white,
                                      focusedBorder: const OutlineInputBorder(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(5),
                                            topRight: Radius.circular(5),
                                            bottomLeft: Radius.circular(5),
                                            bottomRight: Radius.circular(5),
                                          ),
                                          borderSide: BorderSide(
                                              color: white, width: 0)),
                                      enabledBorder: const OutlineInputBorder(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(5),
                                            topRight: Radius.circular(5),
                                            bottomLeft: Radius.circular(5),
                                            bottomRight: Radius.circular(5),
                                          ),
                                          borderSide: BorderSide(
                                              color: white, width: 0)),
                                      errorBorder: const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(4)),
                                          borderSide: BorderSide(
                                            width: 1,
                                            color: Colors.red,
                                          )),
                                      focusedErrorBorder:
                                          const OutlineInputBorder(
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
                              ]),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Animate(
                            effects: const [
                              MoveEffect(
                                  begin: Offset(0, 10),
                                  end: Offset(0, 0),
                                  duration: Duration(milliseconds: 500),
                                  delay: Duration(milliseconds: 300)),
                            ],
                            child: Container(
                              height: 50,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: primarygreyDark.withOpacity(.1),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(children: [
                                Icon(
                                  Icons.scale_outlined,
                                  color: black.withOpacity(.7),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                const VerticalDivider(
                                  color: primarygreyDark,
                                ),
                                SizedBox(
                                  height: 50,
                                  width: MediaQuery.of(context).size.width * .6,
                                  child: TextFormField(
                                    autofocus: false,
                                    textCapitalization:
                                        TextCapitalization.sentences,
                                    textInputAction: TextInputAction.next,
                                    cursorColor: primaryColor,
                                    textAlign: TextAlign.start,
                                    keyboardType: TextInputType.name,
                                    controller: _senderLoc,
                                    style: const TextStyle(),
                                    decoration: InputDecoration(
                                      contentPadding: const EdgeInsets.fromLTRB(
                                          10, 10, 10, 10),
                                      hintText: 'Approx weight',
                                      hintStyle: TextStyle(
                                          color: black.withOpacity(.6),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                      border: InputBorder.none,
                                      filled: false,
                                      focusColor: white,
                                      hoverColor: white,
                                      focusedBorder: const OutlineInputBorder(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(5),
                                            topRight: Radius.circular(5),
                                            bottomLeft: Radius.circular(5),
                                            bottomRight: Radius.circular(5),
                                          ),
                                          borderSide: BorderSide(
                                              color: white, width: 0)),
                                      enabledBorder: const OutlineInputBorder(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(5),
                                            topRight: Radius.circular(5),
                                            bottomLeft: Radius.circular(5),
                                            bottomRight: Radius.circular(5),
                                          ),
                                          borderSide: BorderSide(
                                              color: white, width: 0)),
                                      errorBorder: const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(4)),
                                          borderSide: BorderSide(
                                            width: 1,
                                            color: Colors.red,
                                          )),
                                      focusedErrorBorder:
                                          const OutlineInputBorder(
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
                              ]),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Animate(
              effects: const [
                MoveEffect(
                  begin: Offset(0, 0),
                  end: Offset(20, -80),
                  duration: Duration(milliseconds: 0),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Packaging',
                    style: TextStyle(
                        color: black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'What are you sending?',
                    style: TextStyle(
                        color: black.withOpacity(.5),
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Container(
                      height: 60,
                      padding: const EdgeInsets.all(15),
                      width: MediaQuery.of(context).size.width * .9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: white,
                        boxShadow: [
                          BoxShadow(
                            color: primaryColor.withOpacity(.01),
                            blurStyle: BlurStyle.normal,
                            spreadRadius: 4,
                            blurRadius: 5,
                            offset: const Offset(0, 0),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/box.png',
                                width: 30,
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              const VerticalDivider(
                                color: primarygreyDark,
                              ),
                              const Text(
                                'Box',
                                style: TextStyle(
                                    color: black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.keyboard_arrow_down_rounded,
                            size: 28,
                            color: black.withOpacity(.7),
                          )
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
}
