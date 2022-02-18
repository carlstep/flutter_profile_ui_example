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
            child: Icon(Icons.arrow_back, color: Colors.white,),
          ),
          const Positioned(
            top: 70,
            right: 20,
            child: Icon(Icons.settings, color: Colors.white,),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 50, right: 50, bottom: 20, top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'John Rambo',
                    style: GoogleFonts.lato(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 24),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'john@gmail.com',
                    style: GoogleFonts.lato(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontStyle: FontStyle.italic,
                        fontSize: 16),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.yellow[300],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 40,
                    width: 300,
                    child: Center(
                      child: Text(
                        'Upgrade to Premium',
                        style: GoogleFonts.lato(
                            fontSize: 18, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const ProfileMenuItem(
                    text: 'Your order history',
                    leadingIcon: Icons.shopping_bag_outlined,
                    arrowShown: true,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const ProfileMenuItem(
                    text: 'Help and Support',
                    leadingIcon: Icons.help_outline,
                    arrowShown: true,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const ProfileMenuItem(
                    text: 'Load gift voucher',
                    leadingIcon: Icons.card_giftcard_outlined,
                    arrowShown: true,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const ProfileMenuItem(
                    text: 'Logout',
                    leadingIcon: Icons.logout_outlined,
                    arrowShown: false,
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                ],
              ),
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
      {required this.text,
      required this.leadingIcon,
      required this.arrowShown});
  final String text;
  final IconData leadingIcon;
  final bool arrowShown;

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
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Icon(
                    leadingIcon,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  text,
                  style: GoogleFonts.lato(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            arrowShown
                ? const Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                  )
                : Container(),
          ],
        ));
  }
}
