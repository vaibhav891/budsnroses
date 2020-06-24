import 'package:budsnroses/presentation/myappbar.dart';
import 'package:budsnroses/presentation/shoppingcartpage.dart';
import 'package:flutter/material.dart';

import 'package:budsnroses/domain/shoppingcart.dart';

class ProductPage extends StatelessWidget {
  final Item item;
  const ProductPage({
    Key key,
    @required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              color: Colors.redAccent,
              child: Image.network(item.itemImageURL),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  item.itemName,
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
                ),
                Text(
                  item.itemPrice,
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
                ),
                ExpansionTile(
                  title: Align(
                    alignment: Alignment(-1.1, 0),
                    child: Text('Description'),
                  ),
                  children: [
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore.",
                      //softWrap: true,
                    ),
                  ],
                ),
                // Row(children: [
                //   Text('Delivery Date:'),
                //   Flexible(
                //     child: TextField(
                //       keyboardType: TextInputType.datetime,
                //       decoration: InputDecoration(
                //         suffixIcon: InkWell(
                //             onTap: () {}, child: Icon(Icons.date_range)),
                //         border: OutlineInputBorder(),
                //         hintText: 'dd/mm/yyyy',
                //       ),
                //     ),
                //   )
                // ]),
                // Row(children: [
                //   Text('Quantity:'),
                //   SizedBox(width: 50),
                //   DropdownButton(
                //     items: [
                //       DropdownMenuItem(child: Text('1')),
                //       DropdownMenuItem(child: Text('2')),
                //       DropdownMenuItem(child: Text('3')),
                //       DropdownMenuItem(child: Text('4')),
                //       DropdownMenuItem(child: Text('5')),
                //     ],
                //     onChanged: (d) {},
                //   ),
                //   //RaisedButton(child:Text(''),onPressed: (){},)
                // ])
              ],
            ),
            //Container(height: 300, width: 300, color: Colors.redAccent),
          ],
        ),
      ),
      //bottomSheet: RaisedButton(onPressed: (){}, child:Text('Add to cart'),),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            title: Text('Add'),
            icon: RaisedButton(
              onPressed: () {
                ShoppingCart().addToCart(CartItem(item: item, quantity: 1));
                // TODO : animate the shopping cart icon on appbar
              },
              child: Text(
                  'Add to Cart!'), // TODO - show add or added based on if added
            ),
          ),
          BottomNavigationBarItem(
            title: Text(''),
            icon: RaisedButton(
              onPressed: () {
                ShoppingCart().addToCart(CartItem(item: item, quantity: 1));
                // TODO : navigate to shopping cart page and from there to checkout page
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ShoppingCartPage()));
                // TODO : animate the shopping cart icon on appbar
              },
              child: Text('Buy Now!'),
            ),
          ),
        ],
      ),
    );
  }
}
