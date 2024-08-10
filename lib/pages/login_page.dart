import 'package:finacia_cont/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            image: AssetImage(
              'assets/wallpapers/login_back.jpg',
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withOpacity(.5),
                  Colors.black.withOpacity(.8),
                  Colors.black.withOpacity(1),
                ],
              ),
            ),
          ),
          Container(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.transparent,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.transparent,
                    width: double.maxFinite,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 75,
                        ),
                        Container(
                          width: double.maxFinite,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text(
                              'Transações\nInteligentes\nPara Si',
                              maxLines: 3,
                              style: GoogleFonts.bodoniModa(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const HomePage(),
                                    ),
                                  );
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Container(
                                    color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10.0, horizontal: 40),
                                      child: Center(
                                        child: Text(
                                          'Log In',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Container(
                                  color: Colors.grey.shade900,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10.0, horizontal: 25),
                                    child: Center(
                                      child: Image.asset(
                                        'assets/socials/apple2.png',
                                        width: 30,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Container(
                                  color: Colors.grey.shade900,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10.0, horizontal: 25),
                                    child: Center(
                                      child: Image.asset(
                                        'assets/socials/google.png',
                                        width: 30,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 30.0),
                                child: Text(
                                  'Não tem uma conta?',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              Text(
                                'Sign Up',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
