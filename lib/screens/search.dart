import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
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
                            Navigator.pop(context);
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
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
