import 'package:flutter/material.dart';

class LastTransation extends StatelessWidget {
  const LastTransation({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth * 1.25,
      height: screenHeight * 0.135,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 60,
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'Hoje',
                  style: TextStyle(
                      fontSize: 17.5,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                  width: 40,
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(Icons.arrow_forward_ios_rounded)),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: screenWidth,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      child: CircleAvatar(
                        radius: 55,
                        backgroundColor: Colors.grey.shade300,
                        child: Icon(
                          Icons.apple,
                          color: Colors.black,
                          size: 35,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 150,
                      height: 50,
                      child: Column(
                        children: [
                          Container(
                            width: double.maxFinite,
                            height: 25,
                            child: Text(
                              'Software Apple',
                              style: TextStyle(
                                  fontSize: 17.5,
                                  fontWeight: FontWeight.bold),
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
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 100,
                  height: 50,
                  child: Column(
                    children: [
                      Container(
                        width: double.maxFinite,
                        height: 25,
                        child: Text(
                          '+20000 EUR',
                          style: TextStyle(
                            fontSize: 17.5,
                            color: Colors.green.shade200,
                          ),
                        ),
                      ),
                      Container(
                        width: double.maxFinite,
                        height: 25,
                        child: Text(
                          'Venda',
                          style: TextStyle(
                            fontSize: 17.5,
                            color: Colors.grey,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

