import 'package:flutter/material.dart';

class Contacts extends StatelessWidget {
  const Contacts({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth,
      height: screenHeight * 0.135,
      child: Column(
        children: [
          Container(
              width: screenWidth,
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'Transferir',
                style: TextStyle(fontSize: 17.5, fontWeight: FontWeight.bold),
              )),
          SizedBox(
            height: 5,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              width: screenWidth,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    child: CircleAvatar(
                      radius: 55,
                      backgroundColor: Colors.grey.shade300,
                      child: Icon(
                        Icons.add,
                        size: 25,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    child: CircleAvatar(
                      radius: 55,
                      backgroundImage: AssetImage('assets/persons/person2.jpg'),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    child: CircleAvatar(
                      radius: 55,
                      backgroundImage: AssetImage('assets/persons/person3.jpg'),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    child: CircleAvatar(
                      radius: 55,
                      backgroundImage: AssetImage('assets/persons/person4.jpg'),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    child: CircleAvatar(
                      radius: 55,
                      backgroundImage: AssetImage('assets/persons/person5.jpg'),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    child: CircleAvatar(
                      radius: 55,
                      backgroundImage: AssetImage('assets/persons/person6.jpg'),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
