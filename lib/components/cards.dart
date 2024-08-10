import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  const Cards({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight * 0.25,
      width: screenWidth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // First Card
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    height: double.maxFinite * 1.8,
                    width: screenWidth,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: ListTile(
                      minLeadingWidth: double.maxFinite,
                      title: Column(
                        children: [
                          Container(
                            width: double.maxFinite,
                            height: 25,
                            child: Text(
                              'Software Apple',
                              style: TextStyle(
                                  fontSize: 17.5, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            width: double.maxFinite,
                            height: 25,
                            child: Text(
                              '4 Dec, 14:32',
                              style: TextStyle(
                                fontSize: 17.5,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey.shade300,
                        child: Icon(
                          Icons.apple,
                          color: Colors.black,
                          size: 25,
                        ),
                      ),
                    ),
                  );
                },
              );
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black),
                  color: Colors.black,
                ),
                width: screenWidth / 2.25,
                height: double.maxFinite,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 55,
                      width: screenWidth,
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      child: Image(
                          alignment: Alignment.centerLeft,
                          image: AssetImage(
                            'assets/socials/mastercard.png',
                          )),
                    ),
                    Container(
                      height: 70,
                      width: screenWidth,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 2.5),
                            child: Text(
                              'Saldo',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 2.5),
                            child: Text(
                              '42.655 AKZ',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17.5,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          // Second Card
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.black),
                color: Colors.white,
              ),
              width: screenWidth / 2.25,
              height: double.maxFinite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 55,
                    width: screenWidth,
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: Image(
                        alignment: Alignment.centerLeft,
                        image: AssetImage(
                          'assets/socials/payoneer.png',
                        )),
                  ),
                  Container(
                    height: 70,
                    width: screenWidth,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15.0, vertical: 2.5),
                          child: Text(
                            'Saldo',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15.0, vertical: 2.5),
                          child: Text(
                            '25.124 EUR',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17.5,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
