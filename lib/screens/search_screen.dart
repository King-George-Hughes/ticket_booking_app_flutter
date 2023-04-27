import 'package:booking_app/utils/app_layout.dart';
import 'package:booking_app/utils/app_styles.dart';
import 'package:booking_app/widgets/double_text_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

import '../widgets/icon_text_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(20.0),
          vertical: AppLayout.getHeight(20.0),
        ),
        children: [
          SizedBox(
            height: AppLayout.getHeight(40.0),
          ),
          Text(
            'What are\nYou Looking For?',
            style: Styles.headLineStyle.copyWith(fontSize: 35.0),
          ),
          SizedBox(
            height: AppLayout.getHeight(20.0),
          ),
          FittedBox(
            child: Container(
              padding: EdgeInsets.all(AppLayout.getHeight(3.5)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  AppLayout.getHeight(50.0),
                ),
                color: Styles.searchColor,
              ),
              child: Row(
                children: [
                  Container(
                    width: size.width * 0.44,
                    padding: EdgeInsets.symmetric(
                        vertical: AppLayout.getHeight(7.0)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(AppLayout.getHeight(50.0)),
                      ),
                      color: Colors.white,
                    ),
                    child: Text(
                      'Airline tickets',
                      textAlign: TextAlign.center,
                      style: Styles.textStyle,
                    ),
                  ),
                  Container(
                    width: size.width * 0.44,
                    padding: EdgeInsets.symmetric(
                        vertical: AppLayout.getHeight(7.0)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                        right: Radius.circular(AppLayout.getHeight(50.0)),
                      ),
                      color: Colors.transparent,
                    ),
                    child: Text(
                      'Hotels',
                      textAlign: TextAlign.center,
                      style: Styles.textStyle,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: AppLayout.getHeight(25.0),
          ),
          const IconTextWidget(
              icon: Icons.flight_takeoff_rounded, label: 'Departure'),
          SizedBox(
            height: AppLayout.getHeight(15.0),
          ),
          const IconTextWidget(
              icon: Icons.flight_land_rounded, label: 'Arrival'),
          SizedBox(
            height: AppLayout.getHeight(20.0),
          ),
          Container(
            padding: EdgeInsets.all(AppLayout.getHeight(15.0)),
            decoration: BoxDecoration(
              color: Colors.blue.shade800,
              borderRadius: BorderRadius.circular(AppLayout.getHeight(10.0)),
            ),
            child: Text(
              'Find tickest',
              textAlign: TextAlign.center,
              style: Styles.textStyle.copyWith(color: Colors.white),
            ),
          ),
          SizedBox(
            height: AppLayout.getHeight(40.0),
          ),
          const DoubleTextWidget(
              headingText: "Upcoming Flights", subText: 'View all'),
          SizedBox(
            height: AppLayout.getHeight(15.0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(400.0),
                width: size.width * 0.43,
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(15.0),
                    vertical: AppLayout.getHeight(15.0)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.circular(AppLayout.getHeight(20.0)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 1,
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190.0),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(12.0)),
                        image: const DecorationImage(
                          image: AssetImage('images/sit.jpg'),
                          fit: BoxFit.cover,
                          alignment: Alignment.centerRight,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: AppLayout.getHeight(15.0),
                    ),
                    Text(
                      '20% discount on business class tickets from Airline On International',
                      style: Styles.headLineStyle2.copyWith(
                        fontSize: AppLayout.getHeight(18.0),
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: AppLayout.getWidth(15.0),
                          vertical: AppLayout.getHeight(15.0),
                        ),
                        width: size.width * 0.44,
                        height: AppLayout.getHeight(174.0),
                        decoration: BoxDecoration(
                          color: const Color(0xFF3AB8B8),
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(18.0)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Discount\nfor survey',
                              style: Styles.headLineStyle2.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: AppLayout.getHeight(10.0),
                            ),
                            Text(
                              'Take the survey about our services and get a discount',
                              style: Styles.headLineStyle2.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 15.0),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45.0,
                        top: -40.0,
                        child: Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(30.0)),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: AppLayout.getWidth(18.0),
                              color: const Color(0xFF189999),
                            ),
                            color: Colors.transparent,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
