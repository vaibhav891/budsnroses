import 'package:budsnroses/application/auth/auth_bloc.dart';
import 'package:budsnroses/presentation/login.dart';
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
      listener: (context, state) {
        print(isLoggedIn);
        if (state.userId != '' && state.userId != null) {
          isLoggedIn = true;
        }
      },
      child: Scaffold(
        appBar: MyAppBar("My Shopping Cart"),
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
              Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) {
                  return AddressPage(
                    userId: context.bloc<AuthBloc>().state.userId,
                  );
                },
              ));
            } else {
              print('Welcome to login page');
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => LoginPage()));
            }
          },
          child: Text('Proceed to Checkout...'),
        ),
      ),
    );
  }
}
