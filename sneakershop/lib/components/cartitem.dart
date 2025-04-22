import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakershop/models/cart.dart';
import 'package:sneakershop/models/shoe.dart';

class Cartitem extends StatefulWidget {
  final Shoe shoe;
  const Cartitem({super.key, required this.shoe});

  @override
  State<Cartitem> createState() => _CartitemState();
}

class _CartitemState extends State<Cartitem> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(color: Colors.grey[200]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      child: Image.asset(widget.shoe.imagePath),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Name: ${widget.shoe.name}",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        const SizedBox(height: 5),
                        Text("Price: ${widget.shoe.price}")
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        value.removeItemFromUserCart(widget.shoe);
                        showDialog(
                            anchorPoint: Offset(0, 11),
                            context: context,
                            builder: (context) => AlertDialog(
                                  title: const Text("Item Removed from Cart"),
                                ));
                      },
                      child:
                          Icon(Icons.delete, color: Colors.red[400], size: 30),
                    )
                  ],
                ),
              ),
            ));
  }
}
