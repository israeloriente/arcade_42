import 'package:arcade_42/models/environment.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final Uri _url = Uri.parse(Environment.intraUrl);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            // ============= BACKGROUND IMAGE ================
            Image.asset(
              'assets/arcade_back.jpg',
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
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Image.asset(
                      "assets/42_lisboa.png",
                      fit: BoxFit.fill,
                      height: 100.0,
                      width: 110.0,
                    )),

                const SizedBox(
                  height: 0.0,
                ),

                // ============== ARCADE LOGO ============
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Image.asset(
                      "assets/arcade_logo.png",
                      fit: BoxFit.fill,
                      height: 100.0,
                      width: 250.0,
                    )),

                const SizedBox(
                  height: 250.0,
                ),

                // ================== LOGIN BUTTON =====================
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(32.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(190, 55),
                        textStyle: GoogleFonts.robotoSerif(
                            fontSize: 16, fontWeight: FontWeight.bold),
                        primary: const Color(0xff01babc),
                        onPrimary: Colors.black),
                    onPressed: () {
                      _launchUrl();
                    },
                    child: const Text('Login via Intra'),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  /// Opening the Browser
  void _launchUrl() async {
    if (!await launchUrl(_url)) throw 'Could not launch $_url';
  }
}
