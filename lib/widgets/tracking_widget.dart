import 'package:flutter/material.dart';
import 'package:move_mate/constants/constants.dart';

class TrackingInfoWidget extends StatelessWidget {
  const TrackingInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.all(20),
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
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Shipment Number',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: primarygreyDark),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'NEJ20089934122231',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: black),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                    Image.asset(
                      'assets/images/forklift.png',
                      width: 53,
                    )
                  ],
                ),
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .44,
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: primaryOrange.withOpacity(.2),
                            child: Image.asset(
                              'assets/images/send.png',
                              width: 25,
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Sender',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: primarygreyDark),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                'Atlanta, 5243',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: black),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .3,
                      child: const Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Time',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: primarygreyDark),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: primaryGreen,
                                    radius: 3,
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    '2 days- 3 days',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: black),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .44,
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: primaryGreen.withOpacity(.2),
                            child: Image.asset(
                              'assets/images/receive.png',
                              width: 25,
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Receiver',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: primarygreyDark),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                'Chicago, 6342',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: black),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .3,
                      child: const Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Status',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: primarygreyDark),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Waiting to collect',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: black),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          const Divider(),
          const SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.add,
                color: primaryOrange,
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                'Add Stop',
                style: TextStyle(
                    color: primaryOrange,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
          const SizedBox(
            height: 18,
          ),
        ],
      ),
    );
  }
}
