import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/models/cart_models.dart';
import 'package:provider/provider.dart';

import 'components/grocery_item_tile.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 48,),
          // Good morning
          const Padding(
            padding: EdgeInsets.only(left: 24),
            child: Text('Good morning'),
          ),
          //SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text("Let's order something fresh for you!", style: GoogleFonts.notoSerif(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
            ),
          ),

          const SizedBox(height: 30,),
          const Padding(
            padding: EdgeInsets.only(left: 24.0, right: 24),
            child: Divider(thickness: 1,),
          ),

          const SizedBox(height: 30,),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text('Fresh items'),
          ),
          SizedBox(height: 30,),
          // Let's order some fresh food for you

          // divider

          // Grid food items
          Expanded(
              child: Consumer<CartModel>(
                builder: (context, value, child) => GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio:  1 / 1.2),
                    itemCount: value.shopItems.length,
                    itemBuilder: (context, index) => GroceryItemTile(
                      itemName: value.shopItems[index][0],
                      itemPrice: value.shopItems[index][1],
                      imagePath: value.shopItems[index][2],
                      color: value.shopItems[index][3],)),
              ) ),
        ],
      ),
    );
  }
}
