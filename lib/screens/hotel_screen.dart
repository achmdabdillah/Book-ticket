import 'package:book_ticket/utils/app_layout.dart';
import 'package:book_ticket/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Container(
      margin: const EdgeInsets.only(right: 16, top: 16),
      padding: const EdgeInsets.all(15),

      decoration: BoxDecoration(boxShadow: [
        BoxShadow(color: Colors.grey.shade200, blurRadius: 20, spreadRadius: 5)
      ], color: Styles.blueColor, borderRadius: BorderRadius.circular(24)),
      // width: size.width * 0.6,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          height: AppLayout.getHeight(180),
          width: AppLayout.getWidth(170),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/${hotel['image']}'))),
        ),
        const Gap(10),
        Text(
          "${hotel['place']}",
          style: Styles.headlineStyle3,
        ),
        const Gap(5),
        Text("${hotel['destination']}",
            style: Styles.headlineStyle4.copyWith(color: Colors.white)),
        const Gap(5),
        Text("${hotel['price']}\$/night",
            style: Styles.headlineStyle2
                .copyWith(color: Styles.headlineStyle3.color)),
        const Gap(15),
      ]),
    );
  }
}
