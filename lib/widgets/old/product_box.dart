// widgets/old/product_box.dart

import 'package:flutter/material.dart';
import 'package:store_appy/constant/constant_colors.dart';

import 'package:store_appy/models/product.dart';
import 'package:store_appy/screens/product_edit_screen.dart';
import 'package:store_appy/screens/product_veiw_screen.dart';

class ProductBox extends StatefulWidget {
  final Product product;

  ProductBox({required this.product, super.key});

  @override
  State<ProductBox> createState() => _ProductBoxState();
}

class _ProductBoxState extends State<ProductBox> {
  bool isClicked = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, ProductVeiw.id,
              arguments: widget.product);
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            color: Colors.white,
            elevation: 7.5,
            shadowColor: primaryColor,
            child: Column(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(widget.product.image),
                )),
                /*
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: NetworkImage(product.image),
                          fit: BoxFit.fill,
                        )),
                  ),
                ),*/
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            r"$" + widget.product.price.toString(),
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "${widget.product.title.characters.take(7)}...",
                            style: const TextStyle(
                              color: secondarytextColor,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                isClicked = !isClicked;
                              });
                            },
                            icon: Icon(
                              Icons.favorite_border,
                              color: !isClicked ? Colors.red : Colors.grey,
                            ),
                          ),
                          IconButton(
                              onPressed: () {
                                Navigator.pushNamed(context, ProductEdit.id,
                                    arguments: widget.product);
                              },
                              icon: Icon(Icons.edit))
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
