import 'package:flutter/cupertino.dart';
import 'package:nike/models/shoe.dart';

class Cart extends ChangeNotifier{
  //list of shoes for sale
  List<Shoe> shoeShop =[
    Shoe(
        name: 'Nike Dunk High',
        price: '14195',
        imagePath: 'lib/images/nike_shoe1.jpeg',
        description: 'The customisable design lets you be as expressive as you want.',
    ),
    Shoe(
        name: 'Nike Air Force Mid',
        price: '12795',
        imagePath: 'lib/images/nike_shoe2.jpeg',
        description: 'Let your design shine in satin, keep it classic in canvas or get luxe with leather.'
    ),
    Shoe(
        name: 'Nike Air Force 1\'07',
        price: '11000',
        imagePath: 'lib/images/nike_shoe3.jpeg',
        description: 'Crossing hardwood comfort with off-court flair.'
    ),
    Shoe(
        name: 'Nike Court Low',
        price: '8025',
        imagePath: 'lib/images/nike_shoe4.jpeg',
        description: 'Made for all-day adventures, this legendary shoe uses a combination of durable materials'
    ),
    Shoe(
        name: 'Nike Air ForceLV8',
        price: '9640',
        imagePath: 'lib/images/nike_shoe5.jpeg',
        description: 'If your favorite color changes as often as ours does, you\'ll love these loaded AF1s.',
    ),Shoe(
        name: 'Nike Dunk Low SE',
        price: '9207',
        imagePath: 'lib/images/nike_shoe6.jpeg',
        description: 'These classic Dunks get a metamorphous refresh.'
    ),
  ];
  //list of items in user's cart
  List<Shoe> userCart = [];

  //get list of shoes for sale
  List<Shoe> getShoeList(){
    return shoeShop;
  }

  //get cart
List<Shoe> getUserCart(){
    return userCart;
}
  //add items to cart
  void addItemToCart(Shoe shoe){
   userCart.add(shoe);
   notifyListeners();
  }

  //remove items from cart
void removeItemFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
}
  
}