import 'package:arcade_42/utils/user.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff292d39),
        body: ListView(
          children: [
            // ============= MOEDAS =============
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: 80.0,
                height: 40.0,
                decoration: BoxDecoration(
                    color: Color(0xff01babc),
                    borderRadius: BorderRadius.circular(20.0)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Image.asset(
                        "components/coin.png",
                        fit: BoxFit.fill,
                        height: 25.0,
                        width: 25.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Text(
                        "x42",
                        style: GoogleFonts.robotoSerif(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            ),

            // ============= FOTO =============
            Padding(
              padding: const EdgeInsets.only(top: 32.0),
              child: Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('components/profile.jpg'),
                  radius: 40.0,
                ),
              ),
            ),
            SizedBox(
              height: 10.5,
            ),

            // ============= NOME =============
            Center(
              child: Text(
                "John Orienta",
                style: GoogleFonts.robotoSerif(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70),
              ),
            ),

            // ============= USERNAME =============
            Center(
              child: Text(
                "(jdoe)",
                style: GoogleFonts.robotoSerif(
                    fontSize: 12.0,
                    fontWeight: FontWeight.normal,
                    color: Colors.white70),
              ),
            ),

            // ============= DIVISOR =============
            Divider(
              height: 60.0,
              color: Colors.grey[800],
              indent: 32.0,
              endIndent: 32.0,
            ),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
