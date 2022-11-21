import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 100),
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(child: Image(image: AssetImage("assets/images/avocado.png"), height: 200,)),
            const SizedBox(height: 70,),
            Text("We deliver groceries at your doorstep",
              style: GoogleFonts.notoSerif(
                fontSize: 40,
                fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.center,),
            const SizedBox(height: 70,),
            const Text('Fresh items everyday', style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w300
            ),
            ),
            const SizedBox(height: 70,),
            SizedBox(
              height: 70,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(
                      builder: (context) => Homepage()));
                },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple
                  ),
                  child: const Text("Get started!"),),
            )
          ],
        ),
      ),
    );
  }
}
