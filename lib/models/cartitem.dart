

import 'package:demoapp/models/products.dart';
import 'package:flutter/material.dart';

class CartItem {
  final UniqueKey key = UniqueKey();
  final Products item;
  int quantity;

  CartItem({required this.item, this.quantity = 1});
  

  double getPrice() {
    return item.price * quantity;
  }
}


ValueNotifier<List<CartItem>>  cartItems = ValueNotifier([]);