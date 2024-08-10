import 'package:finacia_cont/components/cards.dart';
import 'package:finacia_cont/components/contacts.dart';
import 'package:finacia_cont/components/last_transactions.dart';
import 'package:finacia_cont/components/statistics_options.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            // Cards
            Cards(screenHeight: screenHeight, screenWidth: screenWidth),
            // Statistic options
            StatisticsOptions(
                screenHeight: screenHeight, screeWidth: screenWidth),

            // Contacts ListView

            Contacts(screenWidth: screenWidth, screenHeight: screenHeight),

            // Last transation
            SizedBox(
              height: 10,
            ),

            LastTransation(
                screenWidth: screenWidth, screenHeight: screenHeight),

            // Bottom Navigation
          ],
        ),
      ),
    );
  }
}
