import 'package:flutter/material.dart';

import '../../Widgets/Product Item.dart';
import '../../data/api manager/api_manager.dart';
import '../../data/model/Product_response.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

String? search;

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                focusedBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                label: Text(
                  'Search Products...',
                  style: TextStyle(color: Colors.grey),
                ),
                enabledBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              ),
              onSubmitted: (value) {
                setState(() {
                  search = value;
                  print(search);
                });
              },
            ),
            FutureBuilder<ProductResponse>(
              future: APIManager().searchProducts(search),
              builder: (context, AsyncSnapshot<ProductResponse> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (snapshot.hasError) {
                  return Center(
                    child: Text(" "),//snapshot.error.toString()
                  );
                }
                final ProductResponse? Product = snapshot.data;
                final ProductResponse item = Product!;
                return ProductItem(
                    image: item.images![0],
                    name: item.title!,
                    price: item.price.toString());
              },
            )
          ],
        ),
      ),
    );
  }
}