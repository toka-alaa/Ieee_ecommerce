import 'package:flutter/material.dart';
import '../../Models/product lists.dart';
import '../../Widgets/Product Item.dart';

class Home extends StatelessWidget {
  Home({super.key});

  List<String> categories = [
    "All",
    "Fashion",
    "Home & Kitchen",
    "Sports & Outdoor",
    "Books & Stationery",
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: categories.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Categories", style: TextStyle(fontWeight: FontWeight.w600)),
          elevation: 1,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(40),
            child: TabBar(
            tabAlignment: TabAlignment.start,
              isScrollable: true,
              indicator: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
              ),
              labelColor: Colors.white,
              tabs: categories.map((category) {
                return Tab(

                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(),
                    ),
                    child: Text(category, style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
        body: TabBarView(
          children:[
            Center(child : GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemCount: all.length,
                itemBuilder: (context, index) => ProductItem(
                    image: all[index].image,
                    name: all[index].name,
                    price: all[index].price),
              ),
            ),
            Center(child : GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemCount: fashion.length,
              itemBuilder: (context, index) => ProductItem(
                  image: fashion[index].image,
                  name: fashion[index].name,
                  price: fashion[index].price),
            ),
            ),
            Center(child : GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemCount: kitchen.length,
              itemBuilder: (context, index) => ProductItem(
                  image: kitchen[index].image,
                  name: kitchen[index].name,
                  price: kitchen[index].price),
            ),
            ),
            Center(child : GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemCount: sports.length,
              itemBuilder: (context, index) => ProductItem(
                  image: sports[index].image,
                  name: sports[index].name,
                  price: sports[index].price),
            ),
            ),
            Center(child : GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemCount: books.length,
              itemBuilder: (context, index) => ProductItem(
                  image: books[index].image,
                  name: books[index].name,
                  price: books[index].price),
            ),
            ),
          ],
        ),
      ),
    );
  }
}