import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.grey[900],
      body: Stack(
        children: [
          const Positioned(
            top: 70,
            left: 20,
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          //Text('Bees\'n\'Honey'),
          const Positioned(
            top: 70,
            right: 20,
            child: Icon(
              Icons.settings,
              color: Colors.white,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey[800],
                  ),
                  child: Column(
                    children: [
                      Row(
                        // contains flag, currency name and country name
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(
                                'assets/images/flag_placeholder.png'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Currency Name',
                                  style: GoogleFonts.lato(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Country Name',
                                  style: GoogleFonts.lato(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300,
                                      fontStyle: FontStyle.italic,
                                      fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.yellow[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: 30,
                            width: 150,
                            child: Center(
                              child: Text(
                                'Enter a value',
                                style: GoogleFonts.lato(
                                    fontSize: 18, fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.arrow_forward,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const ProfileMenuItem(
                  currencyName: 'Albanian LEK',
                  leadingFlag: Image(
                    image: AssetImage('assets/images/flag_placeholder.png'),
                  ),
                  share: true,
                ),
                const SizedBox(
                  height: 15,
                ),
                const ProfileMenuItem(
                  currencyName: 'British Pound',
                  leadingFlag: Image(
                    image: AssetImage('assets/images/flag_placeholder.png'),
                  ),
                  share: true,
                ),
                const SizedBox(
                  height: 15,
                ),
                const ProfileMenuItem(
                  currencyName: 'Euro',
                  leadingFlag: Image(
                    image: AssetImage('assets/images/flag_placeholder.png'),
                  ),
                  share: true,
                ),
                const SizedBox(
                  height: 15,
                ),
                const ProfileMenuItem(
                  currencyName: 'Georgian Lari',
                  leadingFlag: Image(
                    image: AssetImage('assets/images/flag_placeholder.png'),
                  ),
                  share: false,
                ),
                const SizedBox(
                  height: 15,
                ),
                const ProfileMenuItem(
                  currencyName: 'Albanian LEK',
                  leadingFlag: Image(
                    image: AssetImage('assets/images/flag_placeholder.png'),
                  ),
                  share: true,
                ),
                const SizedBox(
                  height: 15,
                ),
                const ProfileMenuItem(
                  currencyName: 'British Pound',
                  leadingFlag: Image(
                    image: AssetImage('assets/images/flag_placeholder.png'),
                  ),
                  share: true,
                ),
                const SizedBox(
                  height: 15,
                ),
                const ProfileMenuItem(
                  currencyName: 'Euro',
                  leadingFlag: Image(
                    image: AssetImage('assets/images/flag_placeholder.png'),
                  ),
                  share: true,
                ),
                const SizedBox(
                  height: 15,
                ),
                const ProfileMenuItem(
                  currencyName: 'Georgian Lari',
                  leadingFlag: Image(
                    image: AssetImage('assets/images/flag_placeholder.png'),
                  ),
                  share: false,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  ));
}

class ProfileMenuItem extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const ProfileMenuItem(
      {required this.currencyName,
      required this.leadingFlag,
      required this.share});
  final String currencyName;
  final Image leadingFlag;
  final bool  share;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.grey[800],
          borderRadius: BorderRadius.circular(20),
        ),
        height: 40,
        width: 300,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 8.0),
                  child: CircleAvatar(
                    child: Image.asset('assets/images/flag_placeholder.png'),
                    backgroundColor: Colors.yellow[200],
                    radius: 20,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 120,
                  child: Text(
                    currencyName,
                    style: GoogleFonts.lato(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 70,
                  child: Text(
                    '0000',
                    style: GoogleFonts.ubuntu(
                      fontWeight: FontWeight.w600,
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            share
                ? const Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Icon(
                      Icons.share,
                      size: 15,
                      color: Colors.white,
                    ),
                  )
                : Container(),
          ],
        ));
  }
}
