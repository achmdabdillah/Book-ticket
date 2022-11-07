import 'package:book_ticket/screens/icon_text_widget.dart';
import 'package:book_ticket/utils/app_layout.dart';
import 'package:book_ticket/utils/app_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          // Screen Title
          Text(
            "What are\n you looking for?",
            style: Styles.headlineStyle
                .copyWith(fontSize: AppLayout.getHeight(35)),
          ),
          Gap(AppLayout.getHeight(20)),
          // Nav Tab
          Container(
            padding: const EdgeInsets.all(3.5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
                color: const Color(0xFFF4F6FD)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Airline Tickets
                  Container(
                    width: AppLayout.getWidth(size.width * 0.44),
                    padding:
                        EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(AppLayout.getHeight(50)))),
                    child: Center(child: const Text("Airline Tickets")),
                  ),
                  // Hotels
                  Container(
                    width: AppLayout.getWidth(size.width * 0.44),
                    padding:
                        EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                    decoration: BoxDecoration(
                        color: Color(0xFFF4F6FD),
                        borderRadius: BorderRadius.horizontal(
                            right: Radius.circular(AppLayout.getHeight(50)))),
                    child: Center(child: const Text("Hotels")),
                  ),
                ]),
          ),
          Gap(AppLayout.getHeight(25)),
          // Airline Tickets
          const AppIconText(
              icon: Icons.flight_takeoff_rounded, text: "Departure"),
          Gap(AppLayout.getHeight(20)),
          // Hotels
          const AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
          Gap(AppLayout.getHeight(20)),
          // Find ticket button
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getHeight(15),
                vertical: AppLayout.getWidth(15)),
            decoration: BoxDecoration(
                color: Styles.blueColor,
                borderRadius:
                    BorderRadius.all(Radius.circular(AppLayout.getHeight(10)))),
            child: Center(
              child: Text(
                "Find Tickets",
                style: Styles.headlineStyle3.copyWith(color: Colors.white),
              ),
            ),
          ),
          Gap(AppLayout.getHeight(20)),
          // Upcoming flights
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Upcoming Flights",
                style: Styles.headlineStyle2,
              ),
              InkWell(
                  onTap: () => {print("You are clicking VIEW ALL")},
                  child: Text(
                    "View All",
                    style:
                        Styles.textStyle.copyWith(color: Styles.primaryColor),
                  )),
            ],
          ),
          Gap(AppLayout.getHeight(20)),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Left section
              // Card 1

              Container(
                height: AppLayout.getHeight(size.height * 0.45),
                width: AppLayout.getWidth(size.width * 0.45),
                // margin: const EdgeInsets.only(top: 16),
                padding: const EdgeInsets.all(15),

                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 20,
                          spreadRadius: 5)
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24)),
                // width: size.width * 0.6,
                child: Column(children: [
                  Container(
                    height: AppLayout.getHeight(size.height * 0.2),
                    width: AppLayout.getWidth(150),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/sit.jpg'))),
                  ),
                  const Gap(12),
                  Text(
                      "20% discount on business class tickets from Airline On International",
                      style:
                          Styles.headlineStyle2.copyWith(color: Colors.black)),
                  const Gap(15),
                ]),
              ),
              // Right Section
              Column(
                children: [
                  Stack(
                    children: [
                      // Card 2 (top right)
                      Container(
                        // margin: const EdgeInsets.only(top: 16),
                        height: AppLayout.getHeight(size.height * 0.20),
                        width: AppLayout.getWidth(size.width * 0.40),
                        padding: EdgeInsets.symmetric(
                            horizontal: AppLayout.getHeight(15),
                            vertical: AppLayout.getHeight(15)),
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade200,
                                  blurRadius: 20,
                                  spreadRadius: 5)
                            ],
                            color: const Color(0xFF3AB8B8),
                            borderRadius: BorderRadius.circular(24)),
                        // width: size.width * 0.6,
                        child: Column(children: [
                          Text("Discount\nFor Survey",
                              style: Styles.headlineStyle2
                                  .copyWith(color: Colors.white, fontSize: 20)),
                          Gap(AppLayout.getHeight(10)),
                          Text(
                              // "Take the survey about our services and get a discount",
                              "Take the survey about our services and ",
                              style: Styles.textStyle.copyWith(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal)),
                        ]),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: // Circle for card 2
                            Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(30)),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.transparent,
                              border: Border.all(
                                  width: 18, color: const Color(0xFF189999))),
                        ),
                      )
                    ],
                  ),

                  Gap(AppLayout.getHeight(size.height * 0.02)),
                  // card 3 (bottom right)
                  Container(
                    padding: const EdgeInsets.all(15),
                    width: AppLayout.getWidth(size.width * 0.40),
                    height: AppLayout.getHeight(size.height * 0.23),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade200,
                              blurRadius: 20,
                              spreadRadius: 5)
                        ],
                        color: const Color(0xFFEC6545),
                        borderRadius: BorderRadius.circular(24)),
                    // width: size.width * 0.6,
                    child: Column(children: [
                      Text("Take Love",
                          style: Styles.headlineStyle2
                              .copyWith(color: Colors.white)),
                      Gap(AppLayout.getHeight(15)),
                      RichText(
                          text: const TextSpan(children: [
                        TextSpan(text: '😍', style: TextStyle(fontSize: 30)),
                        TextSpan(text: '🥰', style: TextStyle(fontSize: 40)),
                        TextSpan(text: '😘', style: TextStyle(fontSize: 30))
                      ]))
                    ]),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
