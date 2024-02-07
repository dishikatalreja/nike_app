import 'package:flutter/material.dart';
import 'package:nike/components/shoe_tile.dart';
import 'package:nike/models/cart.dart';
import 'package:nike/models/shoe.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  //add shoe to cart method
  void addShoeToCart(Shoe shoe){
    Provider.of<Cart>(context,listen: false).addItemToCart(shoe);

    //alert the user, shoe added successfully
    showDialog(context: context,
        builder: (context) => AlertDialog(
         shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          title: Text('Successfully added!'),
          content: Text('Check your cart'),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder:(context,value,child)=>
      Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Search',
                style: TextStyle(
                  color:Colors.grey,
                ),),
                Icon(
                  Icons.search,
                  color: Colors.grey,
                )
              ],
            ),
          ),

          //message
          Padding(padding: EdgeInsets.symmetric(vertical: 25.0),
          child: Text('Everyone flies.. some fly longer than others', style: TextStyle(
            color: Colors.grey[600],
          ),),),
          //hotpicks
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Text('Hot Picks🔥',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),),
                Text('See All',style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Expanded(child: ListView.builder(
              itemCount: value.getShoeList().length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index){
            Shoe shoe = value.getShoeList()[index];
            return ShoeTile(shoe: shoe,onTap: ()=>addShoeToCart(shoe),);
          }),
          ),
        ],
      ),
    );
  }
}
