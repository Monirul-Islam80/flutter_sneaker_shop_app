import 'package:flutter/material.dart';
import 'package:sneakershop/models/shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shopShoe = [
    Shoe(
        name: "product1",
        price: '222',
        imagePath: 'lib/images/shoe1img.jpg',
        description:
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has '),
    Shoe(
        name: "product2",
        price: '333',
        imagePath: 'lib/images/shoe2img.jpg',
        description:
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has '),
    Shoe(
        name: "product3",
        price: '444',
        imagePath: 'lib/images/shoe3img.jpg',
        description:
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has '),
    Shoe(
        name: "product4",
        price: '445',
        imagePath: 'lib/images/shoe4img.jpg',
        description:
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has '),
    Shoe(
        name: "product5",
        price: '454',
        imagePath: 'lib/images/shoe5img.jpg',
        description:
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has '),
  ];

  List<Shoe> userCart = [];

  List<Shoe> getUserCart() {
    return userCart;
  }

  List<Shoe> getShoeList() {
    return shopShoe;
  }

  void addItemToUserCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromUserCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
