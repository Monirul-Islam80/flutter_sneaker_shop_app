import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakershop/components/shoetile.dart';
import 'package:sneakershop/models/cart.dart';
import 'package:sneakershop/models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addItemToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemToUserCart(shoe);
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
            title: const Text("Item Added to Cart"),
            content: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  shoe.imagePath,
                  width: 50,
                  height: 50,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Name: ${shoe.name}",
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Price: ${shoe.price}",
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Search",
                  style: TextStyle(color: Colors.grey),
                ),
                Icon(
                  Icons.search,
                  color: Colors.grey,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 25),
            child: Text(
              "Everyone flies..... Some flies longer then other!",
              style: TextStyle(color: Colors.grey[600]),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Hote Picks 🔥',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text(
                  "See all",
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    Shoe shoe = value.getShoeList()[index];

                    return Shoetile(
                      shoe: shoe,
                      onTap: () => addItemToCart(shoe),
                    );
                  })),
          const Padding(
            padding: EdgeInsets.only(top: 25, left: 25, right: 25),
            child: Divider(
              color: Colors.transparent,
            ),
          )
        ],
      ),
    );
  }
}
