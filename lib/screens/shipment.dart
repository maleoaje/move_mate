import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:move_mate/constants/constants.dart';

class ShipmentPage extends StatefulWidget {
  const ShipmentPage({super.key});

  @override
  State<ShipmentPage> createState() => _ShipmentPageState();
}

class _ShipmentPageState extends State<ShipmentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Animate(
              effects: const [
                MoveEffect(
                    begin: Offset(0, 0),
                    end: Offset(0, -60),
                    duration: Duration(milliseconds: 200)),
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
                        Animate(
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
                        const SizedBox(
                          width: 100,
                        ),
                        Animate(
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
                                fontSize: 16,
                                color: white,
                                fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
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
