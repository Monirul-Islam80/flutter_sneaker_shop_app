import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakershop/components/cartitem.dart';
import 'package:sneakershop/models/cart.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  const Text("My Cart"),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: value.userCart.length,
                      itemBuilder: (context, index) {
                        return Cartitem(
                          shoe: value.getUserCart()[index],
                        );
                      },
                    ),
                  )
                ],
              ),
            ));
  }
}
