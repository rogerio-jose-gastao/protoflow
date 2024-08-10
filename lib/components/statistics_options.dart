import 'package:flutter/material.dart';

class StatisticsOptions extends StatelessWidget {
  const StatisticsOptions({
    super.key,
    required this.screenHeight,
    required this.screeWidth,
  });

  final double screenHeight;
  final double screeWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight / 6,
      width: screeWidth,
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.blue.shade200,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.account_balance_wallet,
                      size: 30,
                    ),
                    Text(
                      'Bancos',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.green.shade200,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.bar_chart_rounded,
                      size: 30,
                    ),
                    Text(
                      'Dados',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.purple.shade200,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.security,
                      size: 30,
                    ),
                    Text(
                      'Segurança',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
