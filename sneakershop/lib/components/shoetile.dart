import 'package:flutter/material.dart';
import 'package:sneakershop/models/shoe.dart';

class Shoetile extends StatelessWidget {
  Shoe shoe;
  void Function()? onTap;
  Shoetile({super.key, required this.shoe, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25),
      width: 230,
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(shoe.imagePath)),
          Column(
            children: [
              Text(
                shoe.description,
                style: TextStyle(color: Colors.grey[600]),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          shoe.name,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        const SizedBox(height: 5),
                        Text(shoe.price)
                      ],
                    ),
                    GestureDetector(
                      onTap: onTap,
                      child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: const BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  bottomRight: Radius.circular(12))),
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                          )),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
