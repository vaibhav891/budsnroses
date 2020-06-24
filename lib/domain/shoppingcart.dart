import 'package:flutter/material.dart';

class Item{
  final String _itemName;
  final String _itemPricePerUnit;
  final String _itemImageURL;

  Item(this._itemName, this._itemPricePerUnit, this._itemImageURL);

  String get itemName => _itemName;

  String get itemPrice => _itemPricePerUnit;

  String get itemImageURL => _itemImageURL;

}

class CartItem{
  final Item item;
  final int quantity;

  CartItem({@required this.item, @required this.quantity});


}

class ShoppingCart{

  static final ShoppingCart _instance = ShoppingCart._();
  List<CartItem> cartItems;

  factory ShoppingCart(){
    return _instance;
  }

  ShoppingCart._(){
    cartItems = <CartItem>[];
  }

  addToCart(CartItem cartItem){
    cartItems.add(cartItem);
  }

}