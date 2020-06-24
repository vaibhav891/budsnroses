import 'package:budsnroses/application/auth/auth_bloc.dart';
import 'package:budsnroses/presentation/myappbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../domain/shoppingcart.dart';
import 'addresspage.dart';

class ShoppingCartPage extends StatefulWidget {
  @override
  _ShoppingCartPageState createState() => _ShoppingCartPageState();
}

class _ShoppingCartPageState extends State<ShoppingCartPage> {
  final ShoppingCart shoppingCart = ShoppingCart();

  bool isLoggedIn = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double totalAmount = shoppingCart.cartItems.fold(
        0.0,
        (previousValue, element) =>
            previousValue +
            (element.quantity * double.parse(element.item.itemPrice)));

    return BlocListener<AuthBloc, AuthState>(
      listener: (BuildContext context, AuthState state) {
        state.map(
            initial: null,
            authenticated: (e) {
              print('I am auth');
              isLoggedIn = true;
            },
            unauthenticated: (e) {
              print('I am Unauth');
              isLoggedIn = false;
            });
      },
      child: Scaffold(
        appBar: MyAppBar(),
        body: Column(
          children: <Widget>[
            ListView(
              shrinkWrap: true,
              children:
                  //ListTile(),
                  shoppingCart.cartItems
                      .map((item) => ListTile(
                            leading: Image.network(item.item.itemImageURL),
                            title: Text(item.item.itemName),
                            subtitle: Text('Qty: ${item.quantity}'),
                            trailing: Text(
                                '${item.quantity * double.parse(item.item.itemPrice)}'),
                          ))
                      .toList(),
            ),
            Text('Total : Rs. $totalAmount'),
          ],
        ),
        bottomNavigationBar: RaisedButton(
          onPressed: () {
            //if already logged in then show checkout page
            if (isLoggedIn) {
              print('Welcome to checkout page');
              // TODO show choose address page
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => AddressPage()));
            } else {
              print('Welcome to login page');
              // TODO show login page - currently showing address page for testing
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => AddressPage()));
            }
            // if not logged in then show login page
          },
          child: Text('Proceed to Checkout...'),
        ),
      ),
    );
  }
}
