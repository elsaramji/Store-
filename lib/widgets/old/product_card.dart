// widgets/products/product_card.dart
import 'package:flutter/material.dart';
import 'package:store_appy/constant/screen_Size_contorl.dart';

class ProductCard extends StatefulWidget {
  final String title;
  final double price;
  final double percent;
  const ProductCard({
    super.key,
    required this.title,
    required this.price,
    required this.percent,
  });

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isclicked = false;
  void addToFavorite() {
    setState(() {
      isclicked = !isclicked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Sizer.percentWidth(context: context, percent: 40),
      height: Sizer.percentHeight(context: context, percent: widget.percent),
      child: Card(
        elevation: 10,
        child: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("${widget.title.characters.take(10)}..."),
                  IconButton(
                      onPressed: addToFavorite,
                      icon: Icon(Icons.favorite,
                          color: isclicked ? Colors.red : Colors.grey)),
                ],
              ),
              Text(r"$" + widget.price.toString()),
            ],
          ),
        ),
      ),
    );
  }
}
