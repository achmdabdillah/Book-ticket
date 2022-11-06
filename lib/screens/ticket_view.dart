import 'package:book_ticket/utils/app_layout.dart';
import 'package:book_ticket/utils/app_style.dart';
import 'package:book_ticket/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  const TicketView({super.key, required this.ticket});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: AppLayout.getWidth(size.width * 0.85),
      height: AppLayout.getHeight(200),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          children: [
            // Blue part of the ticket
            Container(
                decoration: BoxDecoration(
                    color: Styles.blueColor,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(21),
                        topRight: Radius.circular(21))),
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          ticket['from']['code'].toString(),
                          style: Styles.headlineStyle3
                              .copyWith(color: Colors.white),
                        ),
                        const Spacer(),
                        const ThickContainer(),
                        Expanded(
                            child: Stack(children: [
                          SizedBox(
                            height: AppLayout.getHeight(24),
                            child: LayoutBuilder(
                              builder: (BuildContext context,
                                  BoxConstraints constraints) {
                                return Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(
                                      (constraints.constrainWidth() / 6)
                                          .floor(),
                                      (index) => SizedBox(
                                            width: AppLayout.getWidth(3),
                                            height: AppLayout.getHeight(1),
                                            child: const DecoratedBox(
                                                decoration: BoxDecoration(
                                                    color: Colors.white)),
                                          )),
                                );
                              },
                            ),
                          ),
                          Center(
                            child: Transform.rotate(
                              angle: 1.5,
                              child: const Icon(
                                Icons.local_airport_rounded,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ])),
                        const ThickContainer(),
                        const Spacer(),
                        Text(
                          "LDN",
                          style: Styles.headlineStyle3
                              .copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                    const Gap(3),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: AppLayout.getWidth(100),
                          child: Text(
                            ticket['from']['name'].toString(),
                            style: Styles.headlineStyle4
                                .copyWith(color: Colors.white),
                          ),
                        ),
                        Text(
                          ticket['flying_time'].toString(),
                          style: Styles.headlineStyle4
                              .copyWith(color: Colors.white),
                        ),
                        SizedBox(
                          width: AppLayout.getWidth(100),
                          child: Text(
                            ticket['to']['name'].toString(),
                            textAlign: TextAlign.end,
                            style: Styles.headlineStyle4
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      ],
                    )
                  ],
                ))
            // Middle part of the ticket
            ,
            Container(
              color: Styles.orangeColor,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: AppLayout.getWidth(10),
                      height: AppLayout.getHeight(20),
                      child: const DecoratedBox(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10)))),
                    ),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constrainst) {
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate(
                                (constrainst.constrainWidth() / 15).floor(),
                                (index) => Text(
                                      "-",
                                      style: Styles.headlineStyle4
                                          .copyWith(color: Colors.white),
                                    )),
                          );
                        },
                      ),
                    )),
                    SizedBox(
                      width: AppLayout.getWidth(10),
                      height: AppLayout.getHeight(20),
                      child: const DecoratedBox(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10)))),
                    ),
                  ]),
            ),
            // Orange part of the ticket
            Container(
              decoration: BoxDecoration(
                  color: Styles.orangeColor,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21))),
              padding: const EdgeInsets.only(
                  left: 16, top: 8, right: 16, bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ticket['date'].toString(),
                        style:
                            Styles.headlineStyle3.copyWith(color: Colors.white),
                      ),
                      Text("Date",
                          style: Styles.headlineStyle4
                              .copyWith(color: Colors.white))
                    ],
                  ),
                  Column(
                    children: [
                      Text(ticket['departure_time'].toString(),
                          style: Styles.headlineStyle3
                              .copyWith(color: Colors.white)),
                      Text("Departure Time",
                          style: Styles.headlineStyle4
                              .copyWith(color: Colors.white))
                    ],
                  ),
                  Column(
                    children: [
                      Text(ticket['number'].toString(),
                          style: Styles.headlineStyle3
                              .copyWith(color: Colors.white)),
                      Text("Number",
                          style: Styles.headlineStyle4
                              .copyWith(color: Colors.white))
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
