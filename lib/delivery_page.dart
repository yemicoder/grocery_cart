import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DeliveryPage extends StatelessWidget {
  const DeliveryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Image(
                image: AssetImage("assets/images/delivery.png",), height: 200,)),
                SizedBox(height: 20,),
                Text("Thank you for your order!",
    style: GoogleFonts.notoSerif(
                fontSize: 20
    ),
                ),
                const SizedBox(height: 5,),
                Text("Your delivery is on the way", style: GoogleFonts.notoSerif(

                ),
                ),

          const SizedBox(height: 30,),

          MaterialButton(onPressed: () {},
            color: Colors.orange,
          child: const Text('Return home'),)
        ],
      ),
    );
  }
}
