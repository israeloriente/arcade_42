import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            // ============= BACKGROUND IMAGE ================
            Image.asset(
              'components/arcade_back.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),

            // ============ SHADE ==================
            Container(
              color: Colors.blueGrey[900]?.withOpacity(0.5),
              width: double.infinity,
              height: double.infinity,
            ),


            ListView(
              children: [
                // =============== 42LISBOA LOGO ===============
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 8.0),
                    child: Image.asset(
                      "components/42_lisboa.png",
                      fit: BoxFit.fill,
                      height: 100.0,
                      width: 110.0,
                    )),

                SizedBox(
                  height: 0.0,
                ),

                // ============== ARCADE LOGO ============
                Container(
                  child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(top: 8.0),
                      child: Image.asset(
                        "components/arcade_logo.png",
                        fit: BoxFit.fill,
                        height: 100.0,
                        width: 250.0,
                      )),
                ),


                SizedBox(
                  height: 250.0,
                ),

                // ================== LOGIN BUTTON =====================
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(32.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(190, 55),
                        textStyle: GoogleFonts.robotoSerif(fontSize: 16, fontWeight: FontWeight.bold),
                        primary: Color(0xff01babc),
                        onPrimary: Colors.black),

                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/HomePage');
                    },
                    child: Text('Login via Intra'),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
