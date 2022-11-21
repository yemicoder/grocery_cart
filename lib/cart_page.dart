import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/models/cart_models.dart';
import 'package:provider/provider.dart';

import 'delivery_page.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<CartModel>(
        builder: (context, value, child) => Padding(
          padding: const EdgeInsets.only(top: 50, left: 24, right: 24),
          child: Column(
            children: [
              Text("My Cart", style: GoogleFonts.notoSerif(
                fontWeight: FontWeight.bold,
                fontSize: 50,
              ),),
              Expanded(
                child: ListView.builder(
                    itemCount: value.cartItems.length,
                    padding: EdgeInsets.symmetric(vertical: 24),
                    itemBuilder: (context, index) =>
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[200]
                        ),
                        child: ListTile(
                          title: Text(value.cartItems[index][0]),
                          leading: Image.asset(value.cartItems[index][2], height: 36,),
                          subtitle: Text( "\$" + value.cartItems[index][1]),
                          trailing: IconButton(
                            onPressed: () {
                              Provider.of<CartModel>(context, listen: false).removeItemsFromCart(index);
                            },
                              icon: Icon(Icons.delete_forever_sharp, color: Colors.red[300],),
                          ),
                        ),
                      ),
                    ),
                ),
              ),
              Container(
                height: 80,
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Total Cost', style: TextStyle(
                          color: Colors.white
                        ),
                        ),
                        const SizedBox(height: 5,),
                        Text( "\$${value.calculateTotal()}", style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                      ],
                    ),
                    MaterialButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>
                      DeliveryPage(),
                      ));
                    },
                      color: Colors.yellow,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const  [
                        Text("Pay now", style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.normal
                        ),
                        ),
                      ],
                    ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 30,),
            ],
          ),
        ),
      )
    );
  }
}
