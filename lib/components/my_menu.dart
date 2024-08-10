import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyMenu extends StatelessWidget {
  const MyMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.maxFinite,
      // color: Colors.red,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 10.0),
                  child: Container(
                    width: 60,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.deepPurple),
                    child: Padding(
                      padding: const EdgeInsets.all(4),
                      child: Container(
                        width: 70,
                        height: double.maxFinite,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.purple),
                        child: Image(
                          image: AssetImage(
                            'assets/persons/person1.jpg',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),

                // Avatar details
                Column(
                  children: [
                    Expanded(
                      child: Container(
                        height: double.maxFinite,
                        width: 100,
                        child: Container(
                            alignment: Alignment.bottomLeft,
                            width: double.maxFinite,
                            child: Text(
                              'Bem Vindo',
                              style: TextStyle(
                                  fontSize: 15, color: Colors.black45),
                            )),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: double.maxFinite,
                        width: 100,
                        child: Container(
                            alignment: Alignment.topLeft,
                            width: double.maxFinite,
                            child: Text(
                              'Rogério',
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade300,
                    ),
                    padding: EdgeInsets.all(15),
                    child: Icon(Icons.notifications),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
