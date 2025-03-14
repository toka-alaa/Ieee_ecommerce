import 'package:flutter/material.dart';
import '../../data/api manager/api_manager.dart';
import '../../data/model/product_response.dart';

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
                  color: Colors.black,
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
                });
              },
            ),
            FutureBuilder<ProductResponse?>(
              future: APIManager().searchProducts(search),
              builder: (context, AsyncSnapshot<ProductResponse?> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (snapshot.hasError) {
                  return Center(
                    child: Text("Error: ${snapshot.error}"),
                  );
                } else if (!snapshot.hasData || snapshot.data == null) {
                  return Center(
                    child: Text("No product found"),
                  );
                }

                final ProductResponse item = snapshot.data!;

                return Card(
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.network(
                              (item.images?.isNotEmpty == true)
                                  ? item.images![0]
                                  : "https://via.placeholder.com/150",
                              height: 250,
                              width: double.infinity,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) =>
                                  Icon(Icons.image_not_supported, size: 100),
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            item.title ?? "No title",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 10),
                          Text(
                            "\$${item.price?.toString() ?? "0.0"}",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.green,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 12),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            child: Text("Buy Now",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white)),
                          ),
                        ],
                      ),
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
