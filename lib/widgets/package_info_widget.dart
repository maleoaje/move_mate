import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:move_mate/constants/constants.dart';

class PackageInfoWidget extends StatelessWidget {
  const PackageInfoWidget({
    super.key,
    required TextEditingController senderLoc,
    required TextEditingController receiverLoc,
    required TextEditingController weight,
  })  : _senderLoc = senderLoc,
        _receiverLoc = receiverLoc,
        _weight = weight;

  final TextEditingController _senderLoc;
  final TextEditingController _receiverLoc;
  final TextEditingController _weight;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                    textCapitalization: TextCapitalization.sentences,
                    textInputAction: TextInputAction.next,
                    cursorColor: primaryColor,
                    textAlign: TextAlign.start,
                    enabled: true,
                    keyboardType: TextInputType.name,
                    controller: _senderLoc,
                    style: const TextStyle(),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
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
                          borderSide: BorderSide(color: white, width: 0)),
                      enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5),
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(5),
                          ),
                          borderSide: BorderSide(color: white, width: 0)),
                      errorBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide: BorderSide(
                            width: 1,
                            color: Colors.red,
                          )),
                      focusedErrorBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
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
                    textCapitalization: TextCapitalization.sentences,
                    textInputAction: TextInputAction.next,
                    cursorColor: primaryColor,
                    textAlign: TextAlign.start,
                    keyboardType: TextInputType.name,
                    controller: _receiverLoc,
                    style: const TextStyle(),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
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
                          borderSide: BorderSide(color: white, width: 0)),
                      enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5),
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(5),
                          ),
                          borderSide: BorderSide(color: white, width: 0)),
                      errorBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide: BorderSide(
                            width: 1,
                            color: Colors.red,
                          )),
                      focusedErrorBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
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
                    textCapitalization: TextCapitalization.sentences,
                    textInputAction: TextInputAction.next,
                    cursorColor: primaryColor,
                    textAlign: TextAlign.start,
                    keyboardType: TextInputType.name,
                    controller: _weight,
                    style: const TextStyle(),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
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
                          borderSide: BorderSide(color: white, width: 0)),
                      enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5),
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(5),
                          ),
                          borderSide: BorderSide(color: white, width: 0)),
                      errorBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide: BorderSide(
                            width: 1,
                            color: Colors.red,
                          )),
                      focusedErrorBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
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
    );
  }
}
