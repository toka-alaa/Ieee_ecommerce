import 'package:flutter/material.dart';
import '../../Widgets/Product Item.dart';
import '../../data/api manager/api_manager.dart';
import '../../data/model/Product_response.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

String search = "";

class _SearchState extends State<Search> {
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
            FutureBuilder<ProductResponse?>(
              future: APIManager().searchProducts(search)
                  as Future<ProductResponse?>,
              builder: (context, AsyncSnapshot<ProductResponse?> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (snapshot.hasError) {
                  return Center(
                    child: Text(" "), //snapshot.error.toString()
                  );
                }
                final ProductResponse? product = snapshot.data;
                final ProductResponse item = product!;
                return ProductItem(
                  image: item.images![0],
                  name: item.title!,
                  price: item.price.toString(),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
