import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key, required this.image, required this.name, required this.price});

  final String image;
  final String name;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 1)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ClipRRect(
              borderRadius : BorderRadius.vertical(top: Radius.circular(15)),
              child: CachedNetworkImage(
                imageUrl:image,
                width: double.infinity,
                fit: BoxFit.cover,
                height: 126,
                errorWidget: (context, url, error) => Icon(Icons.error),
                placeholder: (context, url) => Center(child:
                CircularProgressIndicator(
                 strokeWidth: 1,
                ),
                ),
              ),
            ),          Text(name),
            Text(price),
          ],
        ),
      ),
    );
  }
}