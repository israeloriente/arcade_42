import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool donateIsPressed = true;
  bool playIsPressed = false;

  @override
  Widget build(BuildContext context) {
    Offset distance = Offset(20, 20);
    Offset nDistance = Offset(10, 10);
    double blur = 30.0;
    double nBlur = 5;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff292d39),
        body: ListView(
          children: [
            // ============= COINS =============
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 8.0),
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
            ),

            // ============= PHOTO =============
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

            // ============= NAME =============
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

            // ============= DIVIDER =============
            Divider(
              height: 60.0,
              color: Colors.grey[800],
              indent: 32.0,
              endIndent: 32.0,
            ),
            SizedBox(
              height: 20.0,
            ),

            // ================ PLAY BUTTON ===============
            Padding(
              padding: const EdgeInsets.only(right: 180.0),
              child: Center(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      playIsPressed = !playIsPressed;
                    });
                  },
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 600),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Color(0xff292d39),
                    boxShadow: [
                      BoxShadow(
                        offset: playIsPressed ? nDistance : distance,
                        color: Color(0xff101217),
                        blurRadius: playIsPressed ? nBlur : blur,
                        inset: playIsPressed,
                      ),
                      BoxShadow(
                          offset: playIsPressed ? -nDistance : -distance,
                          color: Color(0xff323644),
                          blurRadius: playIsPressed ? nBlur : blur,
                        inset: playIsPressed,
                      ),
                    ]
                  ),
                  width: 150,
                  height: 150,
                  child: Icon(
                      LineAwesomeIcons.play,
                    size: 120,
                    color: Color(0xff01babc),
                  ),
                    ),
                ),
              ),
            ),

            // =============== DONATE BUTTON ===============
            Padding(
              padding: const EdgeInsets.only(left: 180.0),
              child: Center(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      donateIsPressed = !donateIsPressed;
                    });
                  },
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 600),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Color(0xff292d39),
                        boxShadow: [
                          BoxShadow(
                            offset: donateIsPressed ? nDistance : distance,
                            color: Color(0xff101217),
                            blurRadius: donateIsPressed ? nBlur : blur,
                            inset: donateIsPressed,
                          ),
                          BoxShadow(
                            offset: donateIsPressed ? -nDistance : -distance,
                            color: Color(0xff323644),
                            blurRadius: donateIsPressed ? nBlur : blur,
                            inset: donateIsPressed,
                          ),
                        ]
                    ),
                    width: 150,
                    height: 150,
                    child: Icon(
                      LineAwesomeIcons.donate,
                      size: 120,
                      color: Color(0xff01babc),
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 50.0,),

            // ============== SHARE BUTTON ================
            Center(
              child: Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  boxShadow: [
                BoxShadow(
                offset: Offset(10, 10),
                  color: Color(0xff101217),
                  blurRadius: 30.0,
                  inset: false,
                ),
                BoxShadow(
                  offset: Offset(-10, -10),
                  color: Color(0xff323644),
                  blurRadius: 30.0,
                  inset: false,
                )],
                ),
                child: IconButton(
                  onPressed: (){},
                  icon: Icon(LineAwesomeIcons.share),
                  color: Color(0xff01babc),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
