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
  final TextEditingController _search = TextEditingController();
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
                          Container(
                            height: 50,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: primarygreyDark.withOpacity(.1),
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(children: [
                              Image.asset(
                                'assets/images/sendbox.png',
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
                                width: MediaQuery.of(context).size.width * .5,
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
                                        borderSide:
                                            BorderSide(color: white, width: 0)),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(5),
                                          topRight: Radius.circular(5),
                                          bottomLeft: Radius.circular(5),
                                          bottomRight: Radius.circular(5),
                                        ),
                                        borderSide:
                                            BorderSide(color: white, width: 0)),
                                    errorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(4)),
                                        borderSide: BorderSide(
                                          width: 1,
                                          color: Colors.red,
                                        )),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(4)),
                                      borderSide: BorderSide(
                                        width: 1,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ]),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
