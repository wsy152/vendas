import 'package:flutter/material.dart';
import 'package:sales_telecom012021/global/config/palleta_color.dart';
import 'package:sales_telecom012021/global/config/styler.dart';

SliverToBoxAdapter buildHeader(double screenHeight) {
  return SliverToBoxAdapter(
    child: Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Palette.primaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30.0),
          bottomRight: Radius.circular(30.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              CircleAvatar(
                child: Text('data'),
              ),
            ],
          ),
          SizedBox(height: screenHeight * 0.03),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Are you feeling sick?',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              Text(
                'If you feel sick with any COVID-19 symptoms, please call or text us immediately for help',
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 15.0,
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FlatButton.icon(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20.0,
                      horizontal: 20.0,
                    ),
                    onPressed: () {},
                    color: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    icon: const Icon(
                      Icons.phone,
                      color: Colors.white,
                    ),
                    label: Text(
                      'Call Now',
                      style: Styles.buttonTextStyle,
                    ),
                    textColor: Colors.white,
                  ),
                  FlatButton.icon(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 20.0,
                    ),
                    onPressed: () {},
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    icon: const Icon(
                      Icons.chat_bubble,
                      color: Colors.white,
                    ),
                    label: Text(
                      'Send SMS',
                      style: Styles.buttonTextStyle,
                    ),
                    textColor: Colors.white,
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    ),
  );
}
